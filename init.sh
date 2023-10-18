#!/bin/bash
#initialisation du dossier d'analyse pour Étude de cas 1

# $1 = premier argument = endroit ou la structure de dossiers et fichiers sera créée

# 1. Créer la structure de base
touch $1/README.md
mkdir $1/data/
mkdir $1/analyses/
mkdir $1/résultats/
mkdir $1/scripts/

# 2. Créer les liens symboliques pour les données
ln -sf /home/public/EtudeCas1/raw_data/ $1/data/
ln -sf /home/public/rna_seq/reference/ $1/data/

# 3. Copier les adapteurs
mkdir $1/data/adaptors/
cp /home/public/rna_seq/demo/adaptors.fa $1/data/adaptors/adaptors.fa