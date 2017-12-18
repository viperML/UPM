program stat
implicit none

integer, allocatable :: x(:)
integer :: tam, i

read(*,*) tam
allocate(x(tam))
do i=1, tam
  x(i) = i**2
end do
write(*,*) x

write(*,*) "Media=",media(x)
write(*,*) "Desviacion=",desviacion(x)

deallocate(x)
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

end program stat
