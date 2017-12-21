program q3
implicit none
real*8 :: sumatorio = 0.d0 ! Aquí se almacena el valor de cada apartado y después se resetea
integer :: i

do i=0, 7
  sumatorio = sumatorio + traza( matmul(A(i),A(i)) )
end do

write(*,*) sumatorio

contains 
  function A(M) ! Esta funcion devuelve una matriz MxM, según el valor de M
    implicit none
    integer,intent(in) :: M
    real*8, dimension(0:M, 0:M) :: A 
    integer :: i, j
    write(*,*) size(A)
    do i= 0, M
      do j=0, M
        A(i,j) = (i/(M*1.d0))**j  ! Multiplico el denominador por 1.d0 para que fortran no la líe con los integers en divisiones
      end do
    end do
  end function A

  function traza(matriz) ! Metes una matriz, te saca la traza. Just works
    implicit none
    real*8 :: traza
    real*8 :: matriz(:,:)
    integer :: i
    traza = 0.d0
    do i = 1, size(matriz(1,:))
      traza = traza + matriz(i,i)
    end do
  end function traza

end program q3
