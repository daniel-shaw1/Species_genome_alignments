#!/bin/bash
#SBATCH --job-name=j_minimap2
#SBATCH --partition=batch
#SBATCH --ntasks=1
#SBATCH --mem=25gb
#SBATCH --time=96:00:00
#SBATCH --output=bcf.%j.out
#SBATCH --error=bcf.%j.err

cd $SLURM_SUBMIT_DIR
ml BCFtools/1.15.1-GCC-10.2.0


# Set input VCF file name
vcf_file="thap_mm10b.vcf.gz"

# Set reference species name
ref_species="mm10"

# Set output file names
consensus_file="${ref_species}_consensus.fasta"
chain_file="${ref_species}_chain.txt"

# Create consensus sequence for reference species using bcftools
bcftools consensus -f "${ref_species}.fasta" "$vcf_file" -c - > "$chain_file"

