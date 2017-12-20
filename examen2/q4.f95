program q4
implicit none
real*8 :: output
integer :: i
write(*,*) "1 ----------------"
output = 0.d0
do i = 1, 10
  output = output + traza(A(i))
end do
write(*,*) output

write(*,*) "2 ----------------"
output = 0.d0
do i = 1, 5
  output = output + traza( (A(i))**2 )
end do
write(*,*) output

write(*,*) "3 ----------------"
output = 0.d0
do i = 1, 5
  output = output + traza( (A(4))**i )
end do
write(*,*) output

write(*,*) A(2)


contains 
  function A(M)
    implicit none
    integer,intent(in) :: M
    real*8, dimension(0:M-1, 0:M-1) :: A
    integer :: i, j
    do i = 0, M-1
      do j =0, M-1
        A(i,j) = (i/(M*1.d0))**j
      end do
    end do
  end function A
  function traza(matriz)
    implicit none
    real*8 :: traza
    real*8 :: matriz(:,:)
    integer :: i
    traza = 0.d0
    if( size(matriz(1,:)) == size(matriz(:,1))) then
      do i = 1, size(matriz(1,:))
        traza = traza + matriz(i,i)
      end do
    end if
  end function traza

end program q4
