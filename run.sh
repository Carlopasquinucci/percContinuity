
# put all the inlet and outlet patches

# input time patch1, patch2, patch3

time=$1
patch1=$2
patch2=$3
patch3=$4

file1=postProcessing/flowRatePatch\(name\=$patch1\)/$time/surfaceFieldValue.dat
file2=postProcessing/flowRatePatch\(name\=$patch2\)/$time/surfaceFieldValue.dat
file3=postProcessing/flowRatePatch\(name\=$patch3\)/$time/surfaceFieldValue.dat


tail -n 1 $file1> inlet_1.log
tail -n 1 $file2 > inlet_2.log
tail -n 1 $file3 > Outlet.log


inlet_1=$(awk '{print $NF}' inlet_1.log)
inlet_2=$(awk '{print $NF}' inlet_2.log)
Outlet=$(awk '{print $NF}' Outlet.log)

echo $inlet_1 > massFlow.txt #clear the massFlow file
echo $inlet_2 >> massFlow.txt
echo $Outlet >> massFlow.txt

python perc.py  #run the perc.py python file
