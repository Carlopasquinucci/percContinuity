with open("massFlow.txt") as f:
 data = f.readlines()
 inlet_1=float(data[0])
 inlet_2=float(data[1])
 Outlet=float(data[2])

residuo=inlet_1+inlet_2+Outlet

#print(inlet_1)
#print(inlet_2)
#print(Outlet)
#print(residuo)

perc=residuo/Outlet*100
print(perc)
