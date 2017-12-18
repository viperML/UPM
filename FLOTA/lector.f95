module lector
contains
  function leer(formatting, boardsize)
    ! Convierte el tablero.dat en una matriz nxn de caracteres. Codigo proveniente del board_generator pero usado a la inversa 
    implicit none
    integer                    :: trash, i
    integer,intent(in)         :: boardsize
    character(40),intent(in)   :: formatting(2)
    character(1),allocatable   :: leer(:,:)
    allocate(leer(boardsize,boardsize))
    open(unit=10, file='tablero.dat')
    read(10,*) ! Saltar linea de numeros
    read(10,*) ! Saltar fila en blanco
    do i = 1, boardsize
      read(10, fmt=formatting(2)) trash, leer(i,:)
    end do
    close(10)
  end function leer

  subroutine mostrar_tablero(input, boardsize, formatting)
    ! A patir de una matriz nxn de caracteres, imprime el tablero con formato
    implicit none
    integer                    :: i
    integer,intent(in)         :: boardsize
    character(1),intent(in)    :: input(:,:)
    character(40)              :: formatting(2)
    write(*,fmt=formatting(1)) (i, i=1,boardsize)
    write(*,*)
    do i=1, boardsize
     write(*,fmt=formatting(2)) i, input(i,:)
    end do
  end subroutine mostrar_tablero
  function tamano_tablero(boardname)
    implicit none
    integer :: i, tamano_tablero
    character(11), intent(in) :: boardname
    tamano_tablero = 0
    open(unit=10,file=boardname,iostat=i,status='old')
      if (i == 0) then
       read(10,*) ! Saltar dos primeras lineas
       read(10,*)
       do
         read(10,*,END=69)
         tamano_tablero = tamano_tablero + 1
       end do
       69 CONTINUE
     end if
     close(10) ! Se cierra el fichero, ya que no hace falta, esta guardado en un array
   end function tamano_tablero
end module lector
