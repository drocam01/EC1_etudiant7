#!/bin/bash
#Netoyage des séquences avec Trimmomatic

#Input files
fichier1=/home/etudiant7/EtudesCas/EC1_etudiant7/data/raw_data/condition1_rep1_R1.fastq.gz
fichier2=/home/etudiant7/EtudesCas/EC1_etudiant7/data/raw_data/condition1_rep1_R2.fastq.gz
fichier3=/home/etudiant7/EtudesCas/EC1_etudiant7/data/raw_data/condition2_rep1_R1.fastq.gz
fichier4=/home/etudiant7/EtudesCas/EC1_etudiant7/data/raw_data/condition2_rep1_R2.fastq.gz
adapteurs=/home/etudiant7/EtudesCas/EC1_etudiant7/data/adaptors/adaptors.fa

#Output files
trim1=/home/etudiant7/EtudesCas/EC1_etudiant7/analyses/trimming/condition1_rep1_R1_paired.gz
trim2=/home/etudiant7/EtudesCas/EC1_etudiant7/analyses/trimming/condition1_rep1_R1_unpaired.gz
trim3=/home/etudiant7/EtudesCas/EC1_etudiant7/analyses/trimming/condition1_rep1_R2_paired.gz
trim4=/home/etudiant7/EtudesCas/EC1_etudiant7/analyses/trimming/condition1_rep1_R2_unpaired.gz
trim5=/home/etudiant7/EtudesCas/EC1_etudiant7/analyses/trimming/condition2_rep1_R1_paired.gz
trim6=/home/etudiant7/EtudesCas/EC1_etudiant7/analyses/trimming/condition2_rep1_R1_unpaired.gz
trim7=/home/etudiant7/EtudesCas/EC1_etudiant7/analyses/trimming/condition2_rep1_R2_paired.gz
trim8=/home/etudiant7/EtudesCas/EC1_etudiant7/analyses/trimming/condition2_rep1_R2_unpaired.gz

#sortie standard et erreurs :
sortie_sterr=/home/etudiant7/EtudesCas/EC1_etudiant7/analyses/logs/trimming.txt

java -jar /bin/trimmomatic-0.39.jar PE -phred33 \
$fichier1 $fichier2 \
$trim1 $trim2 $trim3 $trim4 \
ILLUMINACLIP:$adapteurs:2:30:10 \
TRAILING:30 MINLEN:30 >> $sortie_sterr 2>> $sortie_sterr

echo "Terminé 1"

java -jar /bin/trimmomatic-0.39.jar PE -phred33 \
$fichier3 $fichier4 \
$trim5 $trim6 $trim7 $trim8 \
ILLUMINACLIP:$adapteurs:2:30:10 \
TRAILING:30 MINLEN:30 >> $sortie_sterr 2>> $sortie_sterr

echo "Terminé tout"