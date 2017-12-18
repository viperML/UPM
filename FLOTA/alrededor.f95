module alrededor
  use ascii
contains
  subroutine alrededor_hundido(input_real,input_user,boardsunken,boardsize,shot,ascii_logical)
    ! Una vez se comprueba que el dispararo del usuario ha dado en el blanco, esta subrutina
    ! se encarga de comprobar si ese * formaba parte de un barco mayor, y en ese caso
    ! informarle si es TOCADO o HUNDIDO.
    ! Se recorren las posiciones arriba, abajo, izquierda y derecha del disparo hasta encontrar agua
    ! para ver el limite del barco.
    ! Despues fue modificada para que no se usasen ascii art al comprobar el numero de barcos.
    implicit none

    integer, intent(in)                    :: shot(2), boardsize
    character(1),intent(inout)             :: input_real(boardsize,boardsize), input_user(boardsize,boardsize)
    integer, intent(inout)                 :: boardsunken
    
    character(1),allocatable               :: input_isolated(:,:) ! Array que contiene el barco
    integer                                :: i
    logical                                :: replace
    logical, intent(in)                    :: ascii_logical
    allocate(input_isolated(boardsize, boardsize))

    replace = .false.
    100 CONTINUE         ! Si el barco se hunde comenzara el bucle otra vez desde aqui
    
    input_isolated = 'O' ! Reset de variable - por si acaso
    ! Comprobacion hacia arriba
    do i = shot(1)-1, 1, -1
      if ( input_real(i, shot(2)) == 'O' .OR. input_real(i, shot(2)) == '0') then
        exit
      else if(replace) then
        input_real(i, shot(2)) = '#'
        input_user(i, shot(2)) = '#'
      end if
      input_isolated(i, shot(2)) = input_real(i, shot(2))
    end do

    ! Comprobacion hacia abajo
    do i = shot(1)+1, boardsize, 1
      if (input_real(i, shot(2)) == 'O' .OR. input_real(i, shot(2)) == '0') then
        exit
      else if(replace) then
        input_real(i, shot(2)) = '#'
        input_user(i, shot(2)) = '#'
      end if
      input_isolated(i, shot(2)) = input_real(i, shot(2))
    end do
    
    ! Comprobacion hacia la izquierda
    do i = shot(2)-1, 1, -1
      if ( input_real(shot(1),i) == 'O' .OR. input_real(shot(1),i) == '0') then
        exit
      else if (replace) then
        input_real(shot(1), i) = '#'
        input_user(shot(1), i) = '#'
      end if
      input_isolated(shot(1), i) = input_real(shot(1),i)
    end do

    ! Comprobacion hacia la derecha
    do i = shot(2)+1, boardsize, 1
      if ( input_real(shot(1),i) == 'O' .OR. input_real(shot(1),i) == 'O') then
        exit
      else if(replace) then
        input_real(shot(1),i) = '#'
        input_user(shot(1),i) = '#'
      end if
      input_isolated(shot(1), i) = input_real(shot(1),i)
    end do
   
    ! Si no queda ninguna parte del barco que no esté tocada, se hunde (sustituyendo todos
    ! los marcadores de tocado por hundidos. Para ello se repite el proceso, la variable replace
    ! indica el paso a seguir dentro de los bucles.
    if( .NOT. (ANY( input_isolated == '*') .OR. replace) ) then      ! el ".OR. replace" evita que
      ! OPTIMIZACION A PARTIR de (NOT A) AND (NOT B) -> A .NOR. B    ! se repita el bucle mas
      ! Original: .NOT. ANY(barco_aislado =='*')  .AND.  .NOT. sustituir
      if(ascii_logical) call ascii_hundido
      boardsunken = boardsunken + 1
      replace = .TRUE.
      input_real( shot(1), shot(2) ) = '#'
      input_user( shot(1), shot(2) ) = '#'
      GO TO 100 ! Se repite la comprobacion, esta vez sustituyendo los barcos por hundidos
    else if((.NOT. replace) .AND. ascii_logical ) then
      call ascii_tocado
   end if
  end subroutine
end module alrededor
