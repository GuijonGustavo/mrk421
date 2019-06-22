#para ejecutar el escript en terminal: gnuplot -persist grap.plt
#Aqui va el primer plot. El de los datos en energias de 100Mev a 300GeV
#GAMMA

set terminal png size 1280,960
#set terminal png font arial 14 size 800,600
set datafile separator ","
set key autotitle columnhead
set key off
set output "gammaLC.png"
set title "Gamma 100 MeV-300GeV"
set xlabel "MJD"
set ylabel "Flux[Mev/s cm^2]"
plot "Energia100mev_300GeV_vf.csv" using 1:2:3 with yerrorbars,0.0003354888  with line linetype -1 linewidth 1
set label 1 "Periodicidad: 286 dias" at 286,19 center front
############################
#Aqui va su respectivo periodograma

#set terminal x11 1
#set terminal png medium size 640,480
set datafile separator ","
set key autotitle columnhead
set key off
set output "gamma_robper.png"
set xlabel "Period (days)"
set ylabel "Coeficient of determination"
plot "lomb100a300.csv" with impulses 

#dia: 2.867407e+02 
#cd: 19.36564
#probabilidad de ocurrir:19.36564

#####################################
#####################################




