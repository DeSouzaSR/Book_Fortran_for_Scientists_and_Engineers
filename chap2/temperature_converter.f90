program convtemp
  ! To convert an input temperature from degrees Fahrenheit to
  ! an output temperature in kelvins.
  implicit none
  real :: Tk, Tf ! Temperatures in Kelvin and Fahrenheit, respectively.

  ! Input
  write(*,*) "Enter the temperature in degrees Fahrenheit: "
  read(*,*) Tf

  ! Convert to Kelvin
  Tk = (5./9.) * (Tf - 32.) + 273.15

  ! Write out
  write(*,*) Tf, "F = ", Tk, "k"
end program convtemp
