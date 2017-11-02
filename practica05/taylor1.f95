program taylor1
implicit none
integer :: N, contador, factorial 
real*8 :: x, resultado_factorial, desarrollo = 0.d0, tol
real*8, allocatable :: coeficientes(:)
write(*,*) "Introduce el valor de x:"
read(*,*) x
write(*,*) "Introduce N:"
read(*,*) N
write(*,*) "Introduce la tolerancia:"
read(*,*) tol
allocate(coeficientes(N))

do contador = 0, N-1
 ! Calcular el valor de(2N+1)!
 resultado_factorial = 1
 do factorial = 2*contador + 1, 1, -1
  resultado_factorial = resultado_factorial * factorial
 end do
 !! write(*,*) resultado_factorial

 ! Calcular coeficientes
 coeficientes(contador+1) = ((-1.)**contador) / resultado_factorial
end do
!! write(*,*) "Coeficientes:", coeficientes

do contador = 0, N-1
 desarrollo = desarrollo + coeficientes(contador+1) * x**(2*contador + 1)
end do
write(*,*) "Valor del desarrolo de Taylor", desarrollo, "Valor de sin(x)", sin(x)
write(*,*) "Error cometido:", abs(desarrollo - sin(x))
if ( abs(desarrollo - sin(x)) > tol)  write(*,*) "El error el mayor que la tolerancia, introduzca más términos"

deallocate(coeficientes)
end program taylor1
