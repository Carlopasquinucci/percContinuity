
# put all the inlet and outlet patches

#run it as sh run.sh postProcessing/flowRatePatch\(name\=patch1\)/0/surfaceFieldValue.dat postProcessing/flowRatePatch\(name\=patch2\)/0/surfaceFieldValue.dat
tail -n 1 $1 > inlet_1.log
tail -n 1 $2 > inlet_2.log
tail -n 1 $3 > Outlet.log


inlet_1=$(awk '{print $NF}' inlet_1.log)
inlet_2=$(awk '{print $NF}' inlet_2.log)
Outlet=$(awk '{print $NF}' Outlet.log)

echo $inlet_1 > massFlow.txt #clear the massFlow file
echo $inlet_2 >> massFlow.txt
echo $Outlet >> massFlow.txt

python perc.py  #run the perc.py python file
