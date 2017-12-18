program prod
implicit none
real, allocatable :: matriz1(:,:), matriz2(:,:)
integer :: tam, i

read(*,*) tam
allocate(matriz1(tam,tam))
allocate(matriz2(tam,tam))

matriz1 = 3
matriz2 = 2
! write(*,*) size(matriz1,dim=1)
! do i=1, size(matriz1,dim=1)
!   write(*,*) matriz1(i,:)
! end do 

deallocate(matriz1)
deallocate(matriz2)

contains
  subroutine producto (A, B, AxB, info
    real, intent (in) :: A(:,:)
    real, intent (in) :: B(:,:)
    real, intent (out):: AxB(:,:)
    integer, intent (out) :: info
    


  end subroutine
end program prod
