program sumaiMAS1
implicit none

integer :: i, n, resultado = 0

write(*,*) "Esciba su entero:"
read(*,*) n

do i = 1, n
    resultado = resultado + (i+1)**2
end do

write(*,*) resultado

end program sumaiMAS1