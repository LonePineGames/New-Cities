#!/bin/sh
bindir=$(pwd)
cd /home/lone-pine/work/new-cities/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "xYES" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		/usr/bin/gdb -batch -command=$bindir/gdbscript --return-child-result /home/lone-pine/work/new-cities/build/playground 
	else
		"/home/lone-pine/work/new-cities/build/playground"  
	fi
else
	"/home/lone-pine/work/new-cities/build/playground"  
fi
