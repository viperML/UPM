module ascii
  ! Subrutinas para elementos visuales del programa
contains
  subroutine ascii_titulo
    write(*,*) "Bienvenido a..."
        write(*,*) "    __  __                ___         __         ________      __       "
        write(*,*) "   / / / /_  ______  ____/ (_)____   / /___ _   / ____/ /___  / /_____ _"
        write(*,*) "  / /_/ / / / / __ \/ __  / / ___/  / / __ `/  / /_  / / __ \/ __/ __ `/"
        write(*,*) " / __  / /_/ / / / / /_/ / / /     / / /_/ /  / __/ / / /_/ / /_/ /_/ / "
        write(*,*) "/_/ /_/\__,_/_/ /_/\__,_/_/_/     /_/\__,_/  /_/   /_/\____/\__/\__,_/  "
  end subroutine ascii_titulo
  subroutine ascii_tocado
        write(*,*) "  ______                     __      __"
        write(*,*) " /_  __/___  _________ _____/ /___  / /"
        write(*,*) "  / / / __ \/ ___/ __ `/ __  / __ \/ / "
        write(*,*) " / / / /_/ / /__/ /_/ / /_/ / /_/ /_/  "
        write(*,*) "/_/  \____/\___/\__,_/\__,_/\____(_)   "
  end subroutine ascii_tocado
  subroutine ascii_hundido
        write(*,*) "    __  ____  ___   ______  ________  ____ "
        write(*,*) "   / / / / / / / | / / __ \/  _/ __ \/ __ \ "
        write(*,*) "  / /_/ / / / /  |/ / / / // // / / / / / /"
        write(*,*) " / __  / /_/ / /|  / /_/ // // /_/ / /_/ / "
        write(*,*) "/_/ /_/\____/_/ |_/_____/___/_____/\____/  "                                           
  end subroutine ascii_hundido
  subroutine ascii_youwin
        write(*,*) "    __  __                                          __      __"
        write(*,*) "   / / / /___ ______   ____ _____ _____  ____ _____/ /___  / /"
        write(*,*) "  / /_/ / __ `/ ___/  / __ `/ __ `/ __ \/ __ `/ __  / __ \/ / "
        write(*,*) " / __  / /_/ (__  )  / /_/ / /_/ / / / / /_/ / /_/ / /_/ /_/  "
        write(*,*) "/_/ /_/\__,_/____/   \__, /\__,_/_/ /_/\__,_/\__,_/\____(_)   "
        write(*,*) "                    /____/                                    "
  end subroutine ascii_youwin
  subroutine ascii_agua
        write(*,*) "    ___                    "
        write(*,*) "   /   | ____ ___  ______ _"
        write(*,*) "  / /| |/ __ `/ / / / __ `/"
        write(*,*) " / ___ / /_/ / /_/ / /_/ / "
        write(*,*) "/_/  |_\__, /\__,_/\__,_/  "
        write(*,*) "      /____/               "
  end subroutine ascii_agua
end module ascii
