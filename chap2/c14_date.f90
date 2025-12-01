program c14_date
  ! To calculate the age of an organic sample from the percentage of carbon 14
  ! remaning in it.
  implicit none
  real, parameter :: LAMDA = 0.00012097 ! The radiactive decay constant of
                                        ! carbon 14, in units of 1/years
  real :: age ! Age of sample (years)
  real :: percent ! The percentage of carbon 14 remaining at the time
                  ! of the measurement (%)
  real :: ratio ! The ratio of the carbon (no units)

  write(*,*) "Enter the percentage of carbon 14 remaining:"
  read(*,*) percent
  write(*,*) "The remaining carbon 14 = ", percent, " %"

  ! Calculations
  ratio = percent / 100.
  age = (-1.0 / LAMDA) * log(ratio)

end program c14_date
