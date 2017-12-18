module board_generator
  ! Subrutina provista de antemano
  ! Modificada para que se le pase los formatos con parametros y que no genere una linea con el tamaño al principio
contains
    subroutine boardgen(boardsize, boardname, formatting)
        implicit none
        integer                  :: i
        integer, intent(in)      :: boardsize
        character(11), intent(in) :: boardname
        character(1),allocatable :: board(:,:)
        character(40),intent(in)     :: formatting(2)
        allocate(board(boardsize,boardsize))
        board = 'O'
        open(unit=10,file=boardname)

        write(10,fmt=formatting(1)) (i, i=1,boardsize)
        write(10,*)
        do i = 1,boardsize
            write(10,fmt=formatting(2)) i, board(i,:)
        enddo

        close(10)
    end subroutine boardgen
end module board_generator
