###download minimap and k8, copy k8 into path where paftools will be called 
cp k8-0.2.4/k8-Linux /scratch/des65576/Mouse/paftovcf/

cp k8-0.2.4/k8$HOME/bin/k8 

###needed to call k8

export PATH="$PATH:"`pwd`
##paf must be soreted by reference
sort -k6,6 -k8,8n thap_mm10.paf > thap_mm10.paf_srt.paf 

###call variants from paf file, call default will create a list of variants -but not vcf

k8-Linux paftools.js call thap_mm10.paf_srt.paf  > asm.var.unmasked.txt

##make output into vcf format, -f to for genome for vcf to be based off of.
k8-Linux paftools.js call -f chr17.fa thap_mm10.paf_srt.paf - > thap_mm10b.vcf
