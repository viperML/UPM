program devolver_cifras
    implicit none
    character(3) :: numero
    
    write(*,*) 'Introduce un numero de 3 cifras:'
    read(*,*) numero
    
    write(*,*) numero(1:1), ' centenas ', numero(2:2),' decenas ',  numero(3:3), ' unidades '
end program devolver_cifras