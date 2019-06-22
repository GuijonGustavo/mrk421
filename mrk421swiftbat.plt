#para ejecutar el escript en terminal: gnuplot -persist grap.plt
#Aqui va el primer plot. El de los datos en energias de 100Mev a 300GeV
#x duros

set terminal png size 1280,960
#set terminal x11 0
set datafile separator ","
set key autotitle columnhead
set key off
set output "x_durosLC.png"
set title "15-150 keV"
set xlabel "MJD"
set ylabel "Counts cm^2 s^-1 (15-150 keV)"
set label 1 "Periodicidad: 306 dias" at 306,22.84 center front

#plot "../aavso/aavso_mrk421.csv" using 1:2:3 with yerrorbars, 0 with line linetype -1 linewidth 1
plot "mk421swiftbat.csv" using 1:2:3 with yerrorbars, 0 with line linetype -1 linewidth 1
#plot "mk421swiftxrt.csv" 

############################
#Aqui va su respectivo periodograma

#set terminal x11 1
#para ejecutar el escript en terminal: gnuplot -persist grap.plt

set datafile separator ","
set key autotitle columnhead
set key off
set output "x_duros_robper.png"
set title "15-150 keV"
set xlabel "Period (days)"
set ylabel "Coeficient of determination"
plot "lombm_mrk421siftbat.csv" with impulses 

#dia: 320 
#cd: 458.845
#probabilidad de ocurrir: 3.122329e-03

#####################################
#####################################




