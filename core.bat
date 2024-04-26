@echo off
for /F %%a in ('echo prompt $E ^| cmd') do set "ESC=%%a"
set a1=Åõ
 set a2=Åõ
 set a3=Åõ
 set a4=Åõ
 set a5=Åõ
 set a6=Åõ
 set a7=Åõ
 set a8=Åõ
 set a9=Åõ
set b1=Åõ
 set b2=Åõ
 set b3=Åõ
 set b4=Åõ
 set b5=Åõ
 set b6=Åõ
 set b7=Åõ
 set b8=Åõ
 set b9=Åõ
set c1=Åõ
 set c2=Åõ
 set c3=Åõ
 set c4=Åõ
 set c5=Åõ
 set c6=Åõ
 set c7=Åõ
 set c8=Åõ
 set c9=Åõ
set d1=Åõ
 set d2=Åõ
 set d3=Åõ
 set d4=Åõ
 set d5=Åõ
 set d6=Åõ
 set d7=Åõ
 set d8=Åõ
 set d9=Åõ
set e1=Åõ
 set e2=Åõ
 set e3=Åõ
 set e4=Åõ
 set e5=Åú
 set e6=Åõ
 set e7=Åõ
 set e8=Åõ
 set e9=Åõ
set f1=Åõ
 set f2=Åõ
 set f3=Åõ
 set f4=Åõ
 set f5=Åõ
 set f6=Åõ
 set f7=Åõ
 set f8=Åõ
 set f9=Åõ
set g1=Åõ
 set g2=Åõ
 set g3=Åõ
 set g4=Åõ
 set g5=Åõ
 set g6=Åõ
 set g7=Åõ
 set g8=Åõ
 set g9=Åõ
set h1=Åõ
 set h2=Åõ
 set h3=Åõ
 set h4=Åõ
 set h5=Åõ
 set h6=Åõ
 set h7=Åõ
 set h8=Åõ
 set h9=Åõ
set i1=Åõ
 set i2=Åõ
 set i3=Åõ
 set i4=Åõ
 set i5=Åõ
 set i6=Åõ
 set i7=Åõ
 set i8=Åõ
 set i9=Åõ
set place=e5
set place1=%place:~0,1%
set place2=%place:~1,1%
:map
set %place1%%place2%=%ESC%[5mÅú%ESC%[0m
cls
:map2
set place=%place1%%place2%
if %ERRORLEVEL% == 1 echo User Input:w , ERRORLEVEL:%ERRORLEVEL% , Place:%place% , Place1:%place1% , Place2: %place2%
if %ERRORLEVEL% == 2 echo User Input:a , ERRORLEVEL:%ERRORLEVEL% , Place:%place% , Place1:%place1% , Place2: %place2%
if %ERRORLEVEL% == 3 echo User Input:s , ERRORLEVEL:%ERRORLEVEL% , Place:%place% , Place1:%place1% , Place2: %place2%
if %ERRORLEVEL% == 4 echo User Input:d , ERRORLEVEL:%ERRORLEVEL% , Place:%place% , Place1:%place1% , Place2: %place2%
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
choice /c wasd
:tp
if %ERRORLEVEL% == 1 goto up
if %ERRORLEVEL% == 2 goto left
if %ERRORLEVEL% == 3 goto down
if %ERRORLEVEL% == 4 goto right
goto unknown
:up
set place1=%place:~0,1%
set place2=%place:~1,1%
 if %place2% == 1 ( goto ERROR )
 set %place1%%place2%=Åõ
set /a place2=%place2% - 1
echo %place1%%place2%
goto map

:down
set place1=%place:~0,1%
set place2=%place:~1,1%
 if %place2% == 9 ( goto ERROR )
 set %place1%%place2%=Åõ
set /a place2=%place2% + 1
echo %place1%%place2%
goto map

:left
set place1=%place:~0,1%
set place2=%place:~1,1%
 if %place1% == a ( goto ERROR )
 set %place1%%place2%=Åõ
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
 set %place1%%place2%=Åõ
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

 :unknown
 cls
 goto map2