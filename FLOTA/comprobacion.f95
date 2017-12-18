module comprobacion
  use alrededor
  contains
  function solo_barcos(input, boardsize)
    implicit none
    integer, intent(in) :: boardsize
    integer :: total_elements, board_elements
    character(1), intent(in) :: input(boardsize, boardsize)
    logical :: solo_barcos
    total_elements = boardsize**2
    board_elements = count(input == 'O')
    if(board_elements == boardsize**2) then
      write(*,*) "No has introducido ningún barco, edita el archivo tablero.dat"
      call exit
    end if
    board_elements = board_elements + count(input == '*')
    solo_barcos = total_elements == board_elements
  end function solo_barcos

  function cuantos_barcos(input)
    implicit none
    integer :: cuantos_barcos, shot(2), i, j, boardsize
    character(1), intent(in) :: input(:,:)
    character(1) :: input_dummy2 (size(input,1), size(input,1))
    character(1) :: input_dummy (size(input,1), size(input,1))
    input_dummy = input
    boardsize = size(input, 1)
    input_dummy2 = 'O'
    cuantos_barcos = 0
    ! Por alguna razon no se puede usar partes de un vector como contadores, asi que se usaron i y j
    do i=1, boardsize
      do j=1, boardsize
        if( input_dummy(i, j) == '*') then
          input_dummy(i,j) = 'x'
          shot(1) = i
          shot(2) = j
          call alrededor_hundido(input_dummy, input_dummy2, cuantos_barcos, size(input,1), shot,.FALSE.)
         end if
       end do
    end do

  end function cuantos_barcos
end module comprobacion
