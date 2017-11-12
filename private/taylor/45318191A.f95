program taylor_desde_archivo
implicit none

!! DECLARACIÓN DE VARIABLES
real*8 :: x, tol, desarrollo = 0., valor_real, factorial_resultado ! Factorial_resultado es real*8 porque su valor crece muy rapidamente
real*8, allocatable :: coeficientes(:)
integer :: N, i, j, factorial

!! APRETURA DE ARCHVIOS
open(unit=1,file='input.dat', status='old', action='read')          ! Los datos tienen que ser introducidos en tres líneas, estando en la primera x, la segunda tol y la tercera N
open(unit=2,file='output.dat', status='unknown', action='write')

read(1,*) x
read(1,*) tol
read(1,*) N
write(*,*) "X=", x, "Tolerancia=", tol, "Grado N del polinomio=", N
allocate(coeficientes(N+1)) ! Los terminos son a0, a1, ... an, que en total son n+1

! ---------- Cálculo de los términos, a susituir para cambiar la expresión del desarrollo de Taylor
do i = 0, N
  factorial = 2*i + 1
    factorial_resultado = 1.0
    do j = factorial, 1, -1
        factorial_resultado = factorial_resultado*j
    end do
    coeficientes(i+1) = ((-1.)**i ) / factorial_resultado
end do
valor_real = sin(x)
! ----------

j = 0
do i = 0, N
    desarrollo = desarrollo + coeficientes(i+1) * x**(2*i+1)
    j = j + 1
    if (abs(desarrollo-valor_real) < tol) then
        write(2,*) "Taylor:", desarrollo
        write(2,*) "Función:", valor_real
        write(2,*) "Error:", abs(desarrollo-valor_real)
        write(2,*) "Grado polinomio:", j
        write(*,*) "Taylor:", desarrollo, "Función:", valor_real, "Error:", abs(desarrollo-valor_real), "Grado polinomio:", j

        close(1)
        close(2)
        deallocate(coeficientes)
        
        stop
    end if
end do
write(*,*) "Por favor, use un mayor número de términos."

close(1)
close(2)
deallocate(coeficientes)
end program taylor_desde_archivo
