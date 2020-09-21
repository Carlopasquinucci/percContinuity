
# put all the inlet and outlet pathces


tail -n 1 postProcessing/flowRatePatch\(name\=inlet_1\)/0/surfaceFieldValue.dat > inlet_1.log
tail -n 1 postProcessing/flowRatePatch\(name\=inlet_2\)/0/surfaceFieldValue.dat > inlet_2.log
tail -n 1 postProcessing/flowRatePatch\(name\=Outlet\)/0/surfaceFieldValue.dat > Outlet.log


inlet_1=$(awk '{print $NF}' inlet_1.log)
inlet_2=$(awk '{print $NF}' inlet_2.log)
Outlet=$(awk '{print $NF}' Outlet.log)

echo $inlet_1 > massFlow.txt #clear the massFlow file
echo $inlet_2 >> massFlow.txt
echo $Outlet >> massFlow.txt

python perc.py
