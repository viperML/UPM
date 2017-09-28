program primo
implicit none

integer :: n, i, division
logical :: resultado = .true.
write(*,*) "Escribe un numero natural"
read(*,*) n

if (n<=0) error stop "El numero no es natural"

do i = 2, n - 1
    division = n / i * i
    if (n == division) resultado = .false.
end do 

if (resultado .eqv. .true.) then            !! Para que quede bonito
    write(*,*) "El numero es primo"
else
    write(*,*) "El numero no es primo"
end if

end program primo