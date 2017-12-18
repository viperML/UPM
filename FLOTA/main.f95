program main
! Trabajo relaizado por Fernando Ayats Llamas y Álvaro González Villareal (M6)
! Para las variables de este programa o los nombres de funciones o subrutinas se han usado nombres
! en español, mientras que las variables de esas subrutinas o funciones están en ingles.

! DESCRIPCION EN LINEAS GENERALES:
! - Se lee el tablero y se comrpueba si sus datos son correctos.
! - Una subrutina "simula" todos los disparos posibles, para contar el número de barcos que hay en 
! el tablero.
! - Se entra en un bucle en el que se le pide al usuario el disparo, y con la misma subrutina de antes
! se comprueba si ese '*+' formaba parte de un barco, para decirle si es hundido o tocado.
! NOTAS: El tamaño del tablero puede ser variado: al generar un tablero vacio se le pedira su tamaño
! y el programa es capaz de leerlo y usarlo perfectamente.
!        Se usan dos matrices: tablero%original que es el estado original de los barcos en el archivo
! y tablero%usuario, que almacena "lo que ve" el usuario.

! CARGA DE MODULOS
use board_generator
use lector
use ascii
use alrededor
use comprobacion

implicit none
! Generalizacion del tablero
type tablero_type
  character(11)            :: archivo
  character(40)            :: formato(2)
  integer                  :: tamano, turno, tamblero_ok, hundidos, total
  character(2)             :: tamano_char
  character(1),allocatable :: original(:,:), usuario(:,:)
end type tablero_type

! Declaracion de variables
integer            :: i, disparo(2)
character(1)       :: playagain
type(tablero_type) :: tablero

! Declaracion del nombre del archivo. Esto no tiene por que preguntarse al usuario,
! se declara desde aquí.
tablero%archivo = 'tablero.dat'

! Funcion que devuelve el tamaño del archivo (0 si no existe)
tablero%tamano = tamano_tablero(tablero%archivo)
if(tablero%tamano > 0) then
  allocate(tablero%original(tablero%tamano, tablero%tamano))
  allocate(tablero%usuario(tablero%tamano, tablero%tamano))
else
  write(*,*) "El tablero no existe, se generará uno nuevo."
  write(*,*) "¿Que tamaño deseas? (El tablero será cuadrado)"
  read(*,*) tablero%tamano
  ! Formatos con tamaño establecido por el usuario
  write(tablero%tamano_char,fmt='(I2)') tablero%tamano
  tablero%formato(1) = '(7x,'//trim(tablero%tamano_char)//'i4'//')'
  tablero%formato(2) = '(i2,5x,'//trim(tablero%tamano_char)//'a4'//')'
  ! Se genera el fichero
  call boardgen(tablero%tamano, tablero%archivo, tablero%formato)
  write(*,*) "Por favor coloque sus barcos"
  call exit
end if

! Una vez que se sabe su tamaño, se define el formato de lectura antes de leerlo...
write(tablero%tamano_char,fmt='(I2)') tablero%tamano
tablero%formato(1) = '(7x,'//trim(tablero%tamano_char)//'i4'//')'
tablero%formato(2) = '(i2,5x,'//trim(tablero%tamano_char)//'a4'//')'

! ... y se leen sus datos pasandolos a una matriz
tablero%original = leer(tablero%formato, tablero%tamano)
if(.NOT. solo_barcos(tablero%original, tablero%tamano)) then
  write(*,*) "En el archivo hay mas elementos que no son barcos, por favor use solo O o x"
  call exit
end if
! Se cuentan en numero de barcos que hay en la matriz
tablero%total = cuantos_barcos(tablero%original)

300 CONTINUE ! Punto de inicio si el jugador desea jugar de nuevo
call ascii_titulo

! Se reinician las variables del juego
tablero%hundidos = 0
tablero%turno = 0
tablero%usuario = 'O'


do while ( ANY( tablero%original == '*' ) ) ! Se repetira mientras haya barcos en el array
  write(*,*)
  write(*,*) "----------------------------------"
  write(*,*)

  tablero%turno = tablero%turno + 1
  write(*,fmt='(a6,1x,i0)') "Turno:", tablero%turno
  write(*,fmt='(a26,1x,i0,a1,i0)') "Numero de barcos hundidos:", tablero%hundidos, "/", tablero%total

  call mostrar_tablero(tablero%usuario , tablero%tamano, tablero%formato)

  200 CONTINUE ! Si el disparo ya se habia hecho se comienza desde aqui
  write(*,*) "Introduzca la coordenada FILA, y la coordenada COLUMNA de su disparo"
  read(*,*) disparo(1)
  read(*,*) disparo(2)

  select case (tablero%original(disparo(1),disparo(2)))
   case ('O')
     call ascii_agua
     tablero%original(disparo(1),disparo(2)) = '0'
     tablero%usuario(disparo(1),disparo(2)) = '0'
   case ('*')
     tablero%original(disparo(1),disparo(2)) = 'x'
     tablero%usuario (disparo(1),disparo(2)) = 'x'
     ! Se comprueba si ha sido hundido o tocado. Esta subrutina ya incluye los ascii art para esos dos casos.
     call alrededor_hundido(tablero%original, tablero%usuario, tablero%hundidos, tablero%tamano, disparo, .TRUE.)
   case default
     write(*,*) "Ya habías disparado aquí, elige otra posición:"
     go to 200
   end select 
end do


write(*,*)
write(*,fmt='(a26,1x,i0)') "Numero de barcos hundidos:", tablero%hundidos
call ascii_youwin
print*, char(7) ! Produce un sonido que dependerá del sistema operativo

write(*,*) "¿Desea jugar de nuevo? ( S=Sí, cualquier otra tecla=No )"
read(*,*) playagain
if( playagain == 'S' .OR. playagain == 's') GO TO 300

end program main
