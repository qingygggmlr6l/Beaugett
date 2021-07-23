# Make the x axis labels easier to read.
set encoding utf8
set style data histogram
set style fill solid border
# set the labels
set datafile separator ','
set terminal wxt size 1000,600
#set title 'Comparaison des temps d exécution entre Jena et notre projet 500K'
set ylabel 'Temps (en ms)'
set style histogram clustered
plot for [COL=2:3] 'comparaisonJena500K.tsv' using COL:xticlabels(1) title columnheader
set yr [0:]
replot
