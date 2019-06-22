#para ejecutar el escript en terminal: gnuplot -persist grap.plt
#Aqui va el primer plot. El de los datos en energias de 100Mev a 300GeV
#x suaves

set terminal png size 1280,960
#set terminal x11 0
set datafile separator ","
set key autotitle columnhead
set key off
set output "x_suavesLC.png"
set title "0.2-10 keV"
set xlabel "MJD"
set ylabel "Counts cm^2 s^-1 (0.2-10 keV)"
set label 1 "Periodicidad: 328 dias" at 328,57.96 center front
plot "mk421swiftxrt.csv" using 1:2:3 with yerrorbars, 32 with line linetype -1 linewidth 1

############################
#Aqui va su respectivo periodograma

#set terminal x11 1
#para ejecutar el escript en terminal: gnuplot -persist grap.plt

set datafile separator ","
set key autotitle columnhead
set key off
set output "x_suaves_robper.png"
set title "0.2-10 keV"
set xlabel "Period (days)"
set ylabel "Coeficient of determination"
plot "lombm_mrk421siftxft.csv" with impulses 

#dia: 320 
#cd: 458.845
#probabilidad de ocurrir: 3.122329e-03

#####################################
#####################################




