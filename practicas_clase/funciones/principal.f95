program principal
  use subprogramas
  use funciones

        real :: a,b
        real :: maximo

        a = 4.0
        b = 5.0

write(*,*) a, b

    call valor_maximo_intervalo(a, b, f1, maximo)

    write(*,*) a, b,maximo

end program principal
