#!/bin/bash
#SBATCH --job-name=j_minimap2
#SBATCH --partition=batch
#SBATCH --ntasks=1
#SBATCH --mem=25gb
#SBATCH --time=96:00:00
#SBATCH --output=minimap2.%j.out
#SBATCH --error=minimap2.%j.err

cd $SLURM_SUBMIT_DIR

ml minimap2/2.22-GCC-8.3.0
minimap2 -x asm10 --cs -t 8 GCF_000001635.27_GRCm39_genomic.fna tw5_HiFiONT_defaultctgs_25kbNs_norm.fa.gz > thap_aln_mm_unmasked.paf




###asm10 is for 10 percent genome divergence
###output is a paf
