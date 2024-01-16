#!/bin/bash
#
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno05/lab6-singularity/blast
#SBATCH -J blast-sing

module load singularity

singularity exec /nas/hdd-0/singularity_images/blast_2.9.0--pl526h3066fca_4.sif bash -c '

gzip -d zebrafish.1.protein.faa.gz

makeblastdb -in zebrafish.1.protein.faa -dbtype prot

blastp -query P04156.fasta -db zebrafish.1.protein.faa -out results-blast.txt 
'

module unload singularity
