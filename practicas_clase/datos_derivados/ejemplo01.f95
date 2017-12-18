program ejemplo01
use media_subrutina
implicit none

type alumno
  real :: nota(3)
  real :: average
end type alumno
type(alumno) :: clase(3)

clase(1)%nota(1) = 5.6
clase(1)%nota(2) = 5
clase(1)%nota(3) = 3

clase(2)%nota(1) = 2
clase(2)%nota(2) = 1
clase(2)%nota(3) = 9

clase(3)%nota(1) = 8
clase(3)%nota(2) = 3
clase(3)%nota(3) = 6

write(*,*) clase(1)%nota
write(*,*) clase(2)%nota
write(*,*) clase(3)%nota

clase(1)%average = media( clase(1)%nota )
clase(2)%average = media( clase(2)%nota )
clase(3)%average = media( clase(3)%nota )
write(*,*) "La media del alumno 1 es:", clase(1)%average
write(*,*) "La media del alumno 2 es:", clase(2)%average
write(*,*) "La media del alumno 3 es:", clase(3)%average

write(*,*) "Media de la clase:", media( clase%average )

end program ejemplo01
