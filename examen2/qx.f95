program qx
implicit none
real :: A(4,4)
integer :: i, j

do i=1, 4
  do j=1,4
    a(i, j) = (i+j)*1.0
  end do
end do

write(*,*) A
write(*,*) A**2
write(*,*) matmul(A,A)

end program qx
