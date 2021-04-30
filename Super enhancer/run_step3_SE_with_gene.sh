
#bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Transcription_factor_famile/maize_TF_family_V4_id.bed -b seedling_specific_super_peaks f 0.5 -wo > TFs_gene_in_seedling_super_peaks_wo
#bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Transcription_factor_famile/maize_TF_family_V4_id.bed -b ear_specific_super_peaks f 0.5 -wo > TFs_gene_in_ear_super_peaks_wo

sort -k1,1n -k2,2n seedling_super_peaks_without_CK | bedtools intersect -a - -b /NAS1/lien/data/maize/B73_AGPV4/Zea_mays_B73_AGPv4_genes.bed -wa > seedling_super_peaks_without_CK_with_gene
sort -k1,1n -k2,2n ear_super_peaks_without_CK | bedtools intersect -a - -b /NAS1/lien/data/maize/B73_AGPV4/Zea_mays_B73_AGPv4_genes.bed -wa > ear_super_peaks_without_CK_with_gene
sort -k1,1n -k2,2n seedling_super_peaks_without_CK | bedtools intersect -a - -b /NAS1/lien/data/maize/B73_AGPV4/Zea_mays_B73_AGPv4_genes.bed -f 0.5 -wa > seedling_super_peaks_without_CK_with_gene.f0.5
sort -k1,1n -k2,2n ear_super_peaks_without_CK | bedtools intersect -a - -b /NAS1/lien/data/maize/B73_AGPV4/Zea_mays_B73_AGPv4_genes.bed -f 0.5 -wa > ear_super_peaks_without_CK_with_gene.f0.5

#bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Transcription_factor_famile/maize_TF_family_V4_id.bed -b seedling_super_peaks_without_CK -f 0.5 -wa -u > TFs_gene_in_seedling_super_peaks.bed
#bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Transcription_factor_famile/maize_TF_family_V4_id.bed -b ear_super_peaks_without_CK -f 0.5 -wa -u > TFs_gene_in_ear_super_peaks.bed
