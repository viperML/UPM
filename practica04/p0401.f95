program mult_matrices

! DECLARACION DE VARIABLES
implicit none
integer :: i, j, n
integer, allocatable :: A(:,:), X(:), b(:)
write(*,*) "Introduce el tamaño de las matrices:"
read(*,*) n
allocate(A(n,n))
allocate(x(n))
allocate(b(n))

A = 0
do i=1,n
    do j=i,n
        A(i,j) = i + j
    end do
end do
do i=1,n
    x(i) = i**2
end do
write(*,*) A
write(*,*) x

! CALCULO DEL VECTOR RESULTADO
do i=1, 3
    do j=1, 3
        b(i) = b(i) + A(i,j)*x(j)
    end do 
end do

! MUESTRA RESULTADOS
write(*,*) b
deallocate(A)
deallocate(X)
deallocate(b)   
end program mult_matrices