program devolver_cifras
    implicit none
    integer :: numero
    
    write(*,*) 'Introduce un entero de 3 cifras:'
    read(*,*) numero
    
    if (numero > 999 .OR. numero < 0) then
        error stop "El numero es de mas de 3 cifras o no es entero"
    end if

    write(*,*) numero/100, 'centenas '
    numero = numero - (numero/100)*100
    write(*,*) numero/10, 'decenas'
    numero = numero - (numero/10)*10
    write(*,*) numero, 'unidades'
    
end program devolver_cifras