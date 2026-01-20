program escape_velocity
  ! The escape velocity from the surface of a planet or moon (ignoring the
  ! effects of atmosphere) is given by v = \sqrt{2GM/R}
  !
  ! Input:
  !   M: mass [kg]
  !   R: radius [m]
  ! Output:
  !   v: escape velocity [m/s]

  use iso_fortran_env
  implicit none
  ! Constants
  real(real64), parameter :: G = 6.674e-11

  ! Variables
  real(real64) :: M
  real(real64) :: R
  real(real64) :: v

  write(*,*) "Enter M [kg]: "
  read(*,*) M

  write(*,*) "Enter R [m]: "
  read(*,*) R

  ! Calculations
  v = sqrt(2.*G*M/R)

  ! Write out
  write(*,*) "Escape velocity: ", v
end program escape_velocity
