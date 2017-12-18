module traza_funcion
contains
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
end module
