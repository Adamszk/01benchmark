
PROGRAM fortranbenchf90o3
!-----------------------------------------------------------------------
Integer :: counti, countf, count_rate, pcounti, pcountf, pcount_rate
Real*8            :: answer
Real(8)           :: w=0.999999_8
Real              :: dt
Integer           :: i,upperlimit
INTEGER(KIND = 4) :: element, iteration, iterations, innerloop
INTEGER(KIND = 4) :: array_length
Real*8            :: suma

REAL, DIMENSION(:), ALLOCATABLE :: array
!-----------------------------------------------------------------------
upperlimit = 10000000
array_length = 10000000
element = 0
iteration = 0
iterations = 10
innerloop = 0
suma = 0.0
ALLOCATE ( array(array_length) )
!-----------------------------------------------------------------------
open(1, file = 'speedbench-fortrano3.txt')  
!-----------------------------------------------------------------------
write(*,*) "Fortran optimized speed test begins..."
write(*,*) " "
!-----------------------------------------------------------------------
call system_clock(pcounti,pcount_rate)
answer=w
call system_clock(counti,count_rate)
do i = upperlimit, 0, -1
answer = sqrt(answer)
end do
call system_clock(countf)
dt=REAL(countf-counti)/REAL(count_rate)

write (*,"(A)",advance="no") "Sqrt  of "
write (*,"(E15.7)",advance="no") w
write (*,"(A)",advance="no") " is "
write (*,"(E15.5)",advance="no") answer
write (*,"(A)",advance="no") " Time = "
write (*,"(3f14.12)",advance="no") dt
write (*,"(A)") " seconds. "
!-print results to text file
write (1,"(A)",advance="no") "Sqrt"
write (1,"(3f8.5)",advance="yes") dt
!-----------------------------------------------------------------------
answer=w
call system_clock(counti,count_rate)
do i = upperlimit, 0, -1
answer = sin(answer)
end do
call system_clock(countf)
dt=REAL(countf-counti)/REAL(count_rate)

write(*,"(A)",advance="no") "Sin   of "
write (*,"(E15.7)",advance="no") w
write(*,"(A)",advance="no") " is "
write (*,"(E15.5)",advance="no") answer
write(*,"(A)",advance="no") " Time = "
write (*,"(3f14.12)",advance="no") dt
write (*,"(A)") " seconds. "
!-print results to text file
write (1,"(A)",advance="no") "Sin"
write (1,"(3f8.5)",advance="yes") dt 
!-----------------------------------------------------------------------
answer=w
call system_clock(counti,count_rate)
do i = upperlimit, 0, -1
answer = exp(-answer)
end do
call system_clock(countf)
dt=REAL(countf-counti)/REAL(count_rate)

write(*,"(A)",advance="no") "Exp   of "
write (*,"(E15.7)",advance="no") w
write(*,"(A)",advance="no") " is "
write (*,"(E15.5)",advance="no") answer
write(*,"(A)",advance="no") " Time = "
write (*,"(3f14.12)",advance="no") dt
write (*,"(A)") " seconds. "
!-print results to text file
write (1,"(A)",advance="no") "Exp"
write (1,"(3f8.5)",advance="yes") dt
!-----------------------------------------------------------------------
answer=w
call system_clock(counti,count_rate)
do i = upperlimit, 0, -1
answer = log(1+abs(answer))
end do
call system_clock(countf)
dt=REAL(countf-counti)/REAL(count_rate)

write(*,"(A)",advance="no") "Ln    of "
write (*,"(E15.7)",advance="no") w
write(*,"(A)",advance="no") " is "
write (*,"(E15.5)",advance="no") answer
write(*,"(A)",advance="no") " Time = "
write (*,"(3f14.12)",advance="no") dt
write (*,"(A)") " seconds. "
!-print results to text file
write (1,"(A)",advance="no") "Ln"
write (1,"(3f8.5)",advance="yes") dt
!-----------------------------------------------------------------------
answer=w
call system_clock(counti,count_rate)
do i = upperlimit, 0, -1
answer = cos(answer)
end do
call system_clock(countf)
dt=REAL(countf-counti)/REAL(count_rate)

write(*,"(A)",advance="no") "Cos   of "
write (*,"(E15.7)",advance="no") w
write(*,"(A)",advance="no") " is "
write (*,"(E15.5)",advance="no") answer
write(*,"(A)",advance="no") " Time = "
write (*,"(3f14.12)",advance="no") dt
write (*,"(A)") " seconds. "

write (1,"(A)",advance="no") "Cos"
write (1,"(3f8.5)",advance="yes") dt
!-----------------------------------------------------------------------
answer=w
call system_clock(counti,count_rate)
do i = upperlimit, 0, -1
answer = (answer)**4
end do
call system_clock(countf)
dt=REAL(countf-counti)/REAL(count_rate)

write(*,"(A)",advance="no") "x^4   of "
write (*,"(E15.7)",advance="no") w
write(*,"(A)",advance="no") " is "
write (*,"(E15.5)",advance="no") answer
write(*,"(A)",advance="no") " Time = "
write (*,"(3f14.12)",advance="no") dt
write (*,"(A)") " seconds. "
!-print results to text file
write (1,"(A)",advance="no") "x^4"
write (1,"(3f8.5)",advance="yes") dt
!-----------------------------------------------------------------------
answer=w
call system_clock(counti,count_rate)
do i = upperlimit, 0, -1
answer = answer*w
end do
call system_clock(countf)
dt=REAL(countf-counti)/REAL(count_rate)

write(*,"(A)",advance="no") "x*x   of "
write (*,"(E15.7)",advance="no") w
write(*,"(A)",advance="no") " is "
write (*,"(E15.5)",advance="no") answer
write(*,"(A)",advance="no") " Time = "
write (*,"(3f14.12)",advance="no") dt
write (*,"(A)") " seconds. "
!-print results to text file
write (1,"(A)",advance="no") "x*x"
write (1,"(3f8.5)",advance="yes") dt
!-----------------------------------------------------------------------
answer=w
call system_clock(counti,count_rate)
do i = upperlimit, 0, -1
answer = answer/w
end do
call system_clock(countf)
dt=REAL(countf-counti)/REAL(count_rate)

write(*,"(A)",advance="no") "x/x   of "
write (*,"(E15.7)",advance="no") w
write(*,"(A)",advance="no") " is "
write (*,"(E15.5)",advance="no") answer
write(*,"(A)",advance="no") " Time = "
write (*,"(3f14.12)",advance="no") dt
write (*,"(A)") " seconds. "
!-print results to text file
write (1,"(A)",advance="no") "x/x"
write (1,"(3f8.5)",advance="yes") dt 
!-----------------------------------------------------------------------
answer=w
call system_clock(counti,count_rate)
do i = upperlimit, 0, -1
answer = answer+w
end do
call system_clock(countf)
dt=REAL(countf-counti)/REAL(count_rate)

write(*,"(A)",advance="no") "x+x   of "
write (*,"(E15.7)",advance="no") w
write(*,"(A)",advance="no") " is "
write (*,"(E15.5)",advance="no") answer
write(*,"(A)",advance="no") " Time = "
write (*,"(3f14.12)",advance="no") dt
write (*,"(A)") " seconds. "
!-print results to text file
write (1,"(A)",advance="no") "x+x"
write (1,"(3f8.5)",advance="yes") dt
!-----------------------------------------------------------------------
answer=w
call system_clock(counti,count_rate)
do i = upperlimit, 0, -1
answer = answer-w
end do
call system_clock(countf)
dt=REAL(countf-counti)/REAL(count_rate)

write (*,"(A)",advance="no") "x-x   of "
write (*,"(E15.7)",advance="no") w
write (*,"(A)",advance="no") " is "
write (*,"(E15.5)",advance="no") answer
write (*,"(A)",advance="no") " Time = "
write (*,"(3f14.12)",advance="no") dt
write (*,"(A)") " seconds. "
!-print results to text file
write (1,"(A)",advance="no") "x-x"
write (1,"(3f8.5)",advance="yes") dt
!-----------------------------------------------------------------------
answer = w
call system_clock(counti,count_rate)
do i = upperlimit, 0, -1
answer = sqrt(answer)

answer = sin(answer)

answer = exp(-answer)

answer = log(1+abs(answer)) 

answer = cos(answer)

answer = answer**4

answer = answer*w

answer = answer/w

answer = answer+w 

answer = answer-w 

end do
call system_clock(countf)
dt=REAL(countf-counti)/REAL(count_rate)

write(*,"(A)",advance="no") "Loop  of "
write (*,"(E15.7)",advance="no") w
write(*,"(A)",advance="no") " is "
write (*,"(E15.5)",advance="no") answer
write(*,"(A)",advance="no") " Time = "
write (*,"(3f14.12)",advance="no") dt
write (*,"(A)") " seconds. "
!-print results to text file
write (1,"(A)",advance="no") "Loop"
write (1,"(3f8.5)",advance="yes") dt
!-----------------------------------------------------------------------
call system_clock(counti,count_rate)
DO element = 0, array_length-1, 1
array(element) = element
END DO
DO iteration = 0, iterations-1, 1
  DO innerloop = 0, 10000000-1, 1
  suma = suma + array(MOD((iteration+innerloop),array_length))
  END DO
END DO
deallocate(array)

call system_clock(countf)
dt=REAL(countf-counti)/REAL(count_rate)

write(*,"(A)",advance="no") "Array of "
write (*,"(I4)",advance="no") iterations
write(*,"(A)",advance="no") "            is "
write (*,"(E15.5)",advance="no") suma
write(*,"(A)",advance="no") " Time = "
write (*,"(3f14.12)",advance="no") dt
write (*,"(A)") " seconds. "
!-print results to text file
write (1,"(A)",advance="no") "Array"
write (1,"(3f8.5)",advance="yes") dt
!-----------------------------------------------------------------------
call system_clock(pcountf)
dt=REAL(pcountf-pcounti)/REAL(pcount_rate)

write(*,"(A)",advance="no") "IRun                                 "
write(*,"(A)",advance="no") "       Time = "
write (*,"(3f14.12)",advance="no") dt
write (*,"(A)") " seconds. "

write (1,"(A)",advance="no") "IRun"
write (1,"(3f8.5)",advance="yes") dt

write(*,*) "Done."
close(1)
END PROGRAM fortranbenchf90o3
     
