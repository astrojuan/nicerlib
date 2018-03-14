#!/bin/bash 

NAME=$(scutil --get ComputerName)
if [ $NAME = 'vicuna' ]; then
	echo '...setting for machine of "vicuna"'
	export NICER_DATA_PATH=/Users/enoto/work/nicer/data
	export NICER_RESP_PATH=/Users/enoto/work/niresp
	export PATH=$NICER_SOFT_PATH/nicerlib/nicerlib/misc:$PATH
elif [ $NAME = 'nebula' ]; then
	echo '...setting for machine of "nebula"'
	export NICER_DATA_PATH=/Users/enoto/work/drbv1/reporitory/nicer/data
	export NICER_SOFT_PATH=/Users/enoto/work/drbv2/nicer/nisoft/nicerlib
	export NICER_RESP_PATH=/Users/enoto/work/niresp
	export PYTHONPATH=$NICER_SOFT_PATH:$PYTHONPATH
	export PATH=$NICER_SOFT_PATH/scripts:$PATH
else
	echo 'no corresponding computer setup.'
fi

echo ComputerName    = $NAME
echo NICER_DATA_PATH = $NICER_DATA_PATH
echo NICER_SOFT_PATH = $NICER_SOFT_PATH
echo NICER_RESP_PATH = $NICER_RESP_PATH
echo PYTHONPATH = $PYTHONPATH