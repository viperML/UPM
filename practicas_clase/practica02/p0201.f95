program par_impar
implicit none
integer :: n

write(*,*) 'Escriba su entero:'
read(*,*) n

if ( n/2*2 == n) then
    write(*,*) 'Numero par'
else
    write(*,*) 'Numero impar'
end if

end program par_impar