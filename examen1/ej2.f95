program sumatorios
implicit none
real :: a = 0., b = 0., c = 0.
integer :: n = 27, i

do i = 0, n
    a = a + (2.*i + 1.)
end do

do i = 1, n
    b = b + 1. / (2. * i**2)
end do

do i = 1, n
    c = c + ((-1.)**i) / (2.*i - 1.)
end do

write(*,*) 'a=',a,'b=',b,'c=',c
end program sumatorios