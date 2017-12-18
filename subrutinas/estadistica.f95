module estadistica

contains
function media(vector)
    implicit none
    integer, intent(in) :: vector(:)
    real :: media
    integer :: i
    do i=1, size(vector)
      media = media + vector(i)
    end do
    media = media / (size(vector)*1.)
end function media
function desviacion(vector)
    implicit none
    integer, intent(in) :: vector(:)
    real :: desviacion, average
    integer :: i
    average = media(vector)
    do i=1, size(vector)
      desviacion = desviacion + ( vector(i) - average )**2.
    end do
    desviacion = sqrt( desviacion /(size(vector)-1)  )
end function desviacion

end module
