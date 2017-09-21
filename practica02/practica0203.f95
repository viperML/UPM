program ejercicio3
implicit none
integer :: n

write(*,*) 'Introduce tu entero:'
read(*,*) n

if ( n > 0) then
    if ( n/2*2 == n) then
        write(*,*) 'n es par'
        if ( n/4*4 == n) then
            write(*,*) 'y es multiplo de 4'
        else
            write(*,*) 'y no es multiplo de 4'
        end if
    else
        write(*,*) 'n es impar'
        if (n/3*3 == n) then
            write(*,*) 'y es multiplo de 3'
        else
            write(*,*) 'y no es multiplo de 3'
        end if
    end if
else
    write(*,*) 'El numero es negativo'
end if

end program ejercicio3