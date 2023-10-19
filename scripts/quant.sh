#!/bin/bash
#Quantification avec Kallisto

for prefix in condition1 condition2; do
mkdir /home/etudiant7/EtudesCas/EC1_etudiant7/analyses/quant/${prefix}_rep1

kallisto quant \
-i /home/etudiant7/EtudesCas/EC1_etudiant7/data/reference/Homo_sapiens.GRCh38.cds.all.fa.idx \
-o /home/etudiant7/EtudesCas/EC1_etudiant7/analyses/quant/${prefix}_rep1 \
/home/etudiant7/EtudesCas/EC1_etudiant7/analyses/trimming/${prefix}_rep1_R1_paired.gz \
/home/etudiant7/EtudesCas/EC1_etudiant7/analyses/trimming/${prefix}_rep1_R2_paired.gz \
>> /home/etudiant7/EtudesCas/EC1_etudiant7/analyses/logs/quant.txt \
2>> /home/etudiant7/EtudesCas/EC1_etudiant7/analyses/logs/quant.txt
done

echo "Terminé"