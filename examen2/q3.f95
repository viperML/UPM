program q3
implicit none
integer :: N, i, j
real :: traza7
real, allocatable :: V(:), W(:), A(:,:)


N = 100  ! Se puede cambiar
! read(*,*) N
allocate(V(N))
allocate(W(N))
allocate(A(N,N))

do i = 1, N
  V(i) = 1/((i**2)*1.)
  W(i) = ( (-1)**(i+1) ) / ( (2*i-1)*1.)

  do j = 1, N
    A(i, j) = (i / (N*1.))**j
  end do
end do

! write(*,*) V
! write(*,*) W

! 1 -------------
write(*,*) "1:"
write(*,*) sum(V)
write(*,*) sum(W)
! 2 -------------
write(*,*) "2:"
write(*,*) sum(A)
! 3 -------------
write(*,*) "3:"
write(*,*) sum(W, MASK = W > 0.)
! 4 -------------
write(*,*) "4:"
write(*,*) dot_product(V,W)
! 5 -------------
write(*,*) "5:"
write(*,*) dot_product(V, A(:,N))
! 6 -------------
write(*,*) "6:"
write(*,*) sum( matmul(A, V))
! 7 -------------
write(*,*) "7:"
traza7 = 0.
do i = 1, N
  traza7 = traza7 + A(i,i)
end do
write(*,*) traza7

deallocate(V)
deallocate(W)
deallocate(A)
end program q3
