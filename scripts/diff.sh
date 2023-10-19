#!/bin/bash
#Analyse de l'expression différentielle 

#Input file
fichier_diff=/home/public/EtudeCas1/condition1_vs_condition2.csv

echo "nb total de gènes différentiellement exprimés:"
awk -F',' '$6<0.05' $fichier_diff | wc -l

echo "nb de gènes différentiellement sous-exprimés dans cond1 vs cond2:"
awk -F',' '$6<0.05' $fichier_diff | awk -F',' '$5<0' | wc -l

echo "nb de gènes différentiellement sur-exprimés dans cond1 vs cond2:"
awk -F',' '$6<0.05' $fichier_diff | awk -F',' '$5>0' | wc -l