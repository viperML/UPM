program suma4
implicit none

integer :: i,j, n,m, resultado = 0

write(*,*) "Esciba sus enteros:"
read(*,*) n,m

do i=1, n
    do j=1, m
        resultado = resultado + (i*j + i -j)
    end do
end do

write(*,*) resultado

end program suma4