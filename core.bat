@echo off
for /F %%a in ('echo prompt $E ^| cmd') do set "ESC=%%a"
set a1=›
 set a2=›
 set a3=›
 set a4=›
 set a5=›
 set a6=›
 set a7=›
 set a8=›
 set a9=›
set b1=›
 set b2=›
 set b3=›
 set b4=›
 set b5=›
 set b6=›
 set b7=›
 set b8=›
 set b9=›
set c1=›
 set c2=›
 set c3=›
 set c4=›
 set c5=›
 set c6=›
 set c7=›
 set c8=›
 set c9=›
set d1=›
 set d2=›
 set d3=›
 set d4=›
 set d5=›
 set d6=›
 set d7=›
 set d8=›
 set d9=›
set e1=›
 set e2=›
 set e3=›
 set e4=›
 set e5=œ
 set e6=›
 set e7=›
 set e8=›
 set e9=›
set f1=›
 set f2=›
 set f3=›
 set f4=›
 set f5=›
 set f6=›
 set f7=›
 set f8=›
 set f9=›
set g1=›
 set g2=›
 set g3=›
 set g4=›
 set g5=›
 set g6=›
 set g7=›
 set g8=›
 set g9=›
set h1=›
 set h2=›
 set h3=›
 set h4=›
 set h5=›
 set h6=›
 set h7=›
 set h8=›
 set h9=›
set i1=›
 set i2=›
 set i3=›
 set i4=›
 set i5=›
 set i6=›
 set i7=›
 set i8=›
 set i9=›
set place=e5
set place1=%place:~0,1%
set place2=%place:~1,1%
:map
set %place1%%place2%=%ESC%[5mœ%ESC%[0m
cls
:map2
set place=%place1%%place2%
echo %place1%%place2%
echo      a   b   c   d   e   f   g   h   i
echo   --------------------------------------
echo  1 ^| %a1% ^| %b1% ^| %c1% ^| %d1% ^| %e1% ^| %f1% ^| %g1% ^| %h1% ^| %i1% ^|
echo  2 ^| %a2% ^| %b2% ^| %c2% ^| %d2% ^| %e2% ^| %f2% ^| %g2% ^| %h2% ^| %i2% ^|
echo  3 ^| %a3% ^| %b3% ^| %c3% ^| %d3% ^| %e3% ^| %f3% ^| %g3% ^| %h3% ^| %i3% ^|
echo  4 ^| %a4% ^| %b4% ^| %c4% ^| %d4% ^| %e4% ^| %f4% ^| %g4% ^| %h4% ^| %i4% ^|
echo  5 ^| %a5% ^| %b5% ^| %c5% ^| %d5% ^| %e5% ^| %f5% ^| %g5% ^| %h5% ^| %i5% ^|
echo  6 ^| %a6% ^| %b6% ^| %c6% ^| %d6% ^| %e6% ^| %f6% ^| %g6% ^| %h6% ^| %i6% ^|
echo  7 ^| %a7% ^| %b7% ^| %c7% ^| %d7% ^| %e7% ^| %f7% ^| %g7% ^| %h7% ^| %i7% ^|
echo  8 ^| %a8% ^| %b8% ^| %c8% ^| %d8% ^| %e8% ^| %f8% ^| %g8% ^| %h8% ^| %i8% ^|
echo  9 ^| %a9% ^| %b9% ^| %c9% ^| %d9% ^| %e9% ^| %f9% ^| %g9% ^| %h9% ^| %i9% ^|
echo   ---------------------------------------
echo where to move?
set /p move=(up/down/left/right):
if %move% == up goto up
if %move% == down goto down
if %move% == left goto left
if %move% == right goto right

:up
set place1=%place:~0,1%
set place2=%place:~1,1%
 if %place2% == 1 ( goto ERROR )
 set %place1%%place2%=›
set /a place2=%place2% - 1
echo %place1%%place2%
goto map

:down
set place1=%place:~0,1%
set place2=%place:~1,1%
 if %place2% == 9 ( goto ERROR )
 set %place1%%place2%=›
set /a place2=%place2% + 1
echo %place1%%place2%
goto map

:left
set place1=%place:~0,1%
set place2=%place:~1,1%
 if %place1% == a ( goto ERROR )
 set %place1%%place2%=›
 if %place1% == b ( set place1=a)
 if %place1% == c ( set place1=b)
 if %place1% == d ( set place1=c)
 if %place1% == e ( set place1=d)
 if %place1% == f ( set place1=e)
 if %place1% == g ( set place1=f)
 if %place1% == h ( set place1=g)
 if %place1% == i ( set place1=h)
echo %place1%%place2%
goto map

:right
set place1=%place:~0,1%
set place2=%place:~1,1%
 if %place1% == i ( goto ERROR )
 set %place1%%place2%=›
 if %place1% == h ( set place1=i)
 if %place1% == g ( set place1=h)
 if %place1% == f ( set place1=g)
 if %place1% == e ( set place1=f)
 if %place1% == d ( set place1=e)
 if %place1% == c ( set place1=d)
 if %place1% == b ( set place1=c)
 if %place1% == a ( set place1=b)
echo %place1%%place2%
goto map

:ERROR
cls
 echo cant move!
 goto map2
pause