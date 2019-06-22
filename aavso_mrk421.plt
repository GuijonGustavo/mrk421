#para ejecutar el escript en terminal: gnuplot -persist grap.plt
#Aqui va el primer plot. El de los datos en energias de 100Mev a 300GeV
#aavso_mrk421  OPTICO

set terminal png size 1280,960
#set terminal x11 0
set datafile separator ","
set key autotitle columnhead
set key off
set output "opticoLC.png"
set title "Optico"
set xlabel "JD"
set ylabel "Magnitude"
set label 1 "Periodicidad: 320 dias" at 320,458 center front
plot "../aavso/aavso_mrk421.csv" using 1:2:3 with yerrorbars, 12.843 with line linetype -1 linewidth 1

############################
#Aqui va su respectivo periodograma

#set terminal x11 1
#para ejecutar el escript en terminal: gnuplot -persist grap.plt

set datafile separator ","
set key autotitle columnhead
set key off
set output "optico_robper.png"
set title "Optico"
set xlabel "Period (days)"
set ylabel "Coeficient of determination"
plot "lombm_aavso_mrk421.csv" with impulses 

#dia: 320 
#cd: 458.845
#probabilidad de ocurrir: 3.122329e-03

#####################################
#####################################




