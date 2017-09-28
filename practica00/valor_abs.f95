program absoluto
implicit none

real :: n
write(*,*) "Introuduce su número:"
read(*,*) n

if (n<0) n = -n

write(*,*) "El valor absoluto de su numero es:", n

end program absoluto