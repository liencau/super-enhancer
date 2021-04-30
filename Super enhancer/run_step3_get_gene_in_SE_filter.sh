#perl -e 'my $line=0;while(<>){chomp;$line++;print "$_\t$line\n";}' ear_adjacent_peaks_with_total_rpm-bp_sorted.filtered > ear_adjacent_peaks_with_total_rpm-bp_sorted.filtered.formated
#perl -e 'my $line=0;while(<>){chomp;$line++;print "$_\t$line\n";}' seedling_adjacent_peaks_with_total_rpm-bp_sorted.filtered > seedling_adjacent_peaks_with_total_rpm-bp_sorted.filtered.formated
#######################
bedtools intersect -a ear_super_peaks_CK_filter3 -b seedling_super_peaks_CK_filter3 -wa -u > super_peaks_filter3_common_between_two_tissues
bedtools intersect -a ear_super_peaks_CK_filter3 -b seedling_super_peaks_CK_filter3 -v > ear_specific_super_peaks_filter3
bedtools intersect -a seedling_super_peaks_CK_filter3 -b ear_super_peaks_CK_filter3 -v > seedling_specific_super_peaks_filter3

#############
bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Transcription_factor_famile/maize_TF_family_V4_id.bed -b ear_specific_super_peaks_filter3 -f 0.5 -wa -u > TFs_gene_in_ear_specific_super_peaks.bed
bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Transcription_factor_famile/maize_TF_family_V4_id.bed -b seedling_specific_super_peaks_filter3 -f 0.5 -wa -u > TFs_gene_in_seedling_specific_super_peaks.bed
bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Zea_mays_B73_AGPv4_genes.bed -b ear_specific_super_peaks_filter3 -f 0.5 -wa -u > gene_in_ear_specific_super_peaks_filter3.bed
bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Zea_mays_B73_AGPv4_genes.bed -b seedling_specific_super_peaks_filter3 -f 0.5 -wa -u > gene_in_seedling_specific_super_peaks_filter3.bed

perl get_gene_annotation_with_unique_interaction.pl TFs_gene_in_ear_specific_super_peaks_filter3.bed /NAS1/lien/data/maize/B73_AGPV4/mazie_V4_genes_anno TFs_gene_in_ear_specific_super_peaks.annotation
perl get_gene_annotation_with_unique_interaction.pl TFs_gene_in_seedling_specific_super_peaks_filter3.bed /NAS1/lien/data/maize/B73_AGPV4/mazie_V4_genes_anno TFs_gene_in_seedling_specific_super_peaks.annotation
perl get_gene_annotation_with_unique_interaction.pl gene_in_ear_specific_super_peaks_filter3.bed /NAS1/lien/data/maize/B73_AGPV4/mazie_V4_genes_anno gene_in_ear_specific_super_peaks.annotation
perl get_gene_annotation_with_unique_interaction.pl gene_in_seedling_specific_super_peaks_filter3.bed /NAS1/lien/data/maize/B73_AGPV4/mazie_V4_genes_anno gene_in_seedling_specific_super_peaks.annotation

#bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Zea_mays_B73_AGPv4_genes.bed -b seedling_super_peaks -f 0.5 -wo > gene_in_seedling_super_peaks
#bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Zea_mays_B73_AGPv4_genes.bed -b ear_super_peaks -f 0.5 -wo > gene_in_ear_super_peaks
bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Zea_mays_B73_AGPv4_genes.bed -b seedling_super_peaks_without_CK_filter3 -f 0.5 -wa -u > gene_in_seedling_super_peaks.bed_filter3
bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Zea_mays_B73_AGPv4_genes.bed -b ear_super_peaks_without_CK_filter3 -f 0.5 -wa -u > gene_in_ear_super_peaks_filter3.bed
perl get_gene_annotation_with_unique_interaction.pl gene_in_ear_super_peaks_filter3.bed /NAS1/lien/data/maize/B73_AGPV4/mazie_V4_genes_anno gene_in_ear_super_peaks.annotation
perl get_gene_annotation_with_unique_interaction.pl gene_in_seedling_super_peaks_filter3.bed /NAS1/lien/data/maize/B73_AGPV4/mazie_V4_genes_anno gene_in_seedling_super_peaks.annotation
bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Transcription_factor_famile/maize_TF_family_V4_id.bed -b seedling_super_peaks_filter3 -f 0.5 -wo > TFs_gene_in_seedling_super_peaks_filter3
bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Transcription_factor_famile/maize_TF_family_V4_id.bed -b ear_super_peaks_filter3 -f 0.5 -wo >TFs_gene_in_ear_super_peaks_filter3
bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Zea_mays_B73_AGPv4_genes.bed -b seedling_super_peaks_without_CK_filter3 -f 0.5 -wa -u > gene_in_seedling_super_peaks_filter3.bed
bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Zea_mays_B73_AGPv4_genes.bed -b ear_super_peaks_without_CK_filter3 -f 0.5 -wa -u > gene_in_ear_super_peaks_filter3.bed
bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Transcription_factor_famile/maize_TF_family_V4_id.bed -b seedling_super_peaks_without_CK_filter3 -f 0.5 -wa -u > TFs_gene_in_seedling_super_peaks.bed
bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Transcription_factor_famile/maize_TF_family_V4_id.bed -b ear_super_peaks_without_CK_filter3 -f 0.5 -wa -u > TFs_gene_in_ear_super_peaks_filter3.bed
