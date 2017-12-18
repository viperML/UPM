program suma6
implicit none

integer :: i,j, n,m
real ::  resultado = 0.

write(*,*) "Esciba sus enteros:"
read(*,*) n,m

do i=1, n
    do j=0, i
        resultado = resultado + ((i-j)**2)/3.
    end do
end do

write(*,*) resultado

end program suma6