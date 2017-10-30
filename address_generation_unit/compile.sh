#!/bin/csh



if($#argv == 0) then # $#argv is the number of arguments supplied on the command line --> check if there is arguments or not
	echo select as an argument: \'tb\' or \'rtl\'
else if ($1 == "tb") then         # check the first argument if tb
	cd simulation/ncsim/rtl_tc0
	icncsim makefile 
	icncsim runGUI&
	cd ../../..
	#echo hello
else if ($1 == "rtl") then
	cd hdlcheck/hal
	ichal makefile
	ichal runGUI &
	cd ../..
	#echo hi

else if ($1 == "syn") then
	cd rtl2gds/dc_shell
	icdc makefile
	icdc compile &
	cd ../..
	#echo hi
endif

echo ---------------done----------------
