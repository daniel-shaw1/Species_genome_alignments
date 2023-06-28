# Species_genome_alignments

These scripts utilize minimap2 to align genomes between species and to create a vcf with variants between each genome.

First, minimap2 is used to align sequences.

Next, the java script paftools.js is called usinsg paftovcf.sh, inorder to convert the paf minimap output into a standard vcf file. 

Lastly, bcftools can be used to make a concensus genome between the two species.
