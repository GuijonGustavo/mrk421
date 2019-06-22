#para ejecutar el escript en terminal: gnuplot -persist grap.plt
#Aqui va el primer plot. El de los datos en energias de 100Mev a 300GeV
#MRK421_J1104+3812_sinError RADIO

set terminal png size 1280,960
#set terminal x11 0
set datafile separator ","
set key autotitle columnhead
set key off
set output "radioCL.png"
set title "Radio 40m"
set xlabel "MJD"
set ylabel "Flux Density (Jy)"
set label 1 "Periodicidad: 234 dias" at 234,47 center front
plot "mrk421_J1104+3812_sinError.csv" using 1:2:3 with yerrorbars, 0.5263612 with line linetype -1 linewidth 1

############################
#Aqui va su respectivo periodograma

#set terminal x11 1
#para ejecutar el escript en terminal: gnuplot -persist grap.plt

set datafile separator ","
set key autotitle columnhead
set key off
set output "radio_robper.png"
set title "Radio 40m"
set xlabel "Period (days)"
set ylabel "Coeficient of determination"
plot "lombmrk421_J1104+3812.csv" with impulses 

#dia: 234 
#cd: 47
#probabilidad de ocurrir:4.268517e-03

#####################################
#####################################




