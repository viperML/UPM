program leer1
implicit none

integer :: i, a, ierr
real :: b

open(unit=12, file='hola.dat', status='old', iostat=ierr)
write(*,*) ierr

do i=1,5
 write(*,*) 'Escribe su numero: '
 read(*,*) a
 write(12, fmt='(i4)') a
end do

rewind(12)

do i=1, 5
 read(12,*) b
 write(*,fmt='(f10.4)') b
end do

close(12, iostat=ierr)

end program leer1
