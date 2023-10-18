#!/bin/bash
#Analyses de qualité avec le programme Fastqc

fichier1=/home/etudiant7/EtudesCas/EC1_etudiant7/data/raw_data/condition1_rep1_R1.fastq.gz
fichier2=/home/etudiant7/EtudesCas/EC1_etudiant7/data/raw_data/condition1_rep1_R2.fastq.gz
fichier3=/home/etudiant7/EtudesCas/EC1_etudiant7/data/raw_data/condition2_rep1_R1.fastq.gz
fichier4=/home/etudiant7/EtudesCas/EC1_etudiant7/data/raw_data/condition2_rep1_R2.fastq.gz
sortie=/home/etudiant7/EtudesCas/EC1_etudiant7/analyses/qc/

#sortie standard et erreurs :
sortie_sterr=/home/etudiant7/EtudesCas/EC1_etudiant7/analyses/logs/fastqc.txt

fastqc $fichier1 -o $sortie >> $sortie_sterr 2>> $sortie_sterr
echo "Terminé 1"
fastqc $fichier2 -o $sortie >> $sortie_sterr 2>> $sortie_sterr
echo "Terminé 2"
fastqc $fichier3 -o $sortie >> $sortie_sterr 2>> $sortie_sterr
echo "Terminé 3"
fastqc $fichier4 -o $sortie >> $sortie_sterr 2>> $sortie_sterr
echo "Terminé tout"