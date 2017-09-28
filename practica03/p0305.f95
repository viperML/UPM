program suma5
implicit none

integer :: i,j, n,m, resultado = 0

write(*,*) "Esciba sus enteros:"
read(*,*) n,m

do i=1, n
    do j=i, n+m
        resultado = resultado + i -j
    end do
end do

write(*,*) resultado

end program suma5