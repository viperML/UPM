program devolver_cifras
    implicit none
    integer :: numero
    
    write(*,*) 'Introduce un numero de 3 cifras:'
    read(*,*) numero
    
    if (numero > 999) then
        error stop "El numero es de mas de 3 cifras"
    end if

    write(*,*) numero/100, 'centenas '
    numero = numero - (numero/100)*100
    write(*,*) numero/10, 'decenas'
    numero = numero - (numero/10)*10
    write(*,*) numero, 'unidades'
end program devolver_cifras