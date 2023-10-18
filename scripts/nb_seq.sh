#!/bin/bash
#Calcul du nombre de séquence dans un fichier fastq

fichier1=/home/etudiant7/EtudesCas/EC1_etudiant7/data/raw_data/condition1_rep1_R1.fastq.gz
fichier2=/home/etudiant7/EtudesCas/EC1_etudiant7/data/raw_data/condition1_rep1_R2.fastq.gz
fichier3=/home/etudiant7/EtudesCas/EC1_etudiant7/data/raw_data/condition2_rep1_R1.fastq.gz
fichier4=/home/etudiant7/EtudesCas/EC1_etudiant7/data/raw_data/condition2_rep1_R2.fastq.gz
sortie=/home/etudiant7/EtudesCas/EC1_etudiant7/analyses/prelim/nb_seq.txt

echo "nb de séquence du fichier 'condition1_rep1_R1.fastq.gz'" >> $sortie
zgrep -c '^+$' $fichier1 >> $sortie
echo "Terminé 1" 
echo "nb de séquence du fichier 'condition1_rep1_R2.fastq.gz'" >> $sortie
zgrep -c '^+$' $fichier2 >> $sortie
echo "Terminé 2"
echo "nb de séquence du fichier 'condition2_rep1_R1.fastq.gz'" >> $sortie
zgrep -c '^+$' $fichier3 >> $sortie
echo "Terminé 3"
echo "nb de séquence du fichier 'condition2_rep1_R2.fastq.gz'" >> $sortie
zgrep -c '^+$' $fichier4 >> $sortie
echo "Terminé tout"