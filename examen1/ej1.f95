program raices
implicit none

real :: a, b, c, raiz
write(*,*) 'Introduce los valores de a, b, y c (Reales), tal que ax**2 + bx + c = 0'
read(*,*) a, b, c

raiz = b**2. - (4. * a * c)
if (raiz < 0.) then
    write(*,*) 'x1=', -b/(2.*a), + sqrt(-raiz) / (2.*a), 'i'
    write(*,*) 'x2=', -b/(2.*a), - sqrt(-raiz) / (2.*a), 'i'
else
    write(*,*) 'x1=', -b/(2.*a) + sqrt(raiz)/(2.*a)
    write(*,*) 'x2=', -b/(2.*a) - sqrt(raiz)/(2.*a)
end if

end program raices
