#perl -e 'my $line=0;while(<>){chomp;$line++;print "$_\t$line\n";}' ear_adjacent_peaks_with_total_rpm-bp_sorted.filtered > ear_adjacent_peaks_with_total_rpm-bp_sorted.filtered.formated
#perl -e 'my $line=0;while(<>){chomp;$line++;print "$_\t$line\n";}' seedling_adjacent_peaks_with_total_rpm-bp_sorted.filtered > seedling_adjacent_peaks_with_total_rpm-bp_sorted.filtered.formated
#######################
#bedtools intersect -a ear_super_peaks -b seedling_super_peaks -wa -u > super_peaks_common_between_two_tissues
#bedtools intersect -a ear_super_peaks -b seedling_super_peaks -v > ear_specific_super_peaks
#bedtools intersect -a seedling_super_peaks -b ear_super_peaks -v > seedling_specific_super_peaks

bedtools intersect -a ear_super_peaks_without_CK.high400 -b seedling_super_peaks_without_CK.high400 -v > ear_specific_super_peaks_high400
bedtools intersect -a seedling_super_peaks_without_CK.high400 -b ear_super_peaks_without_CK.high400 -v > seedling_specific_super_peaks_high400
#############
bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Transcription_factor_famile/maize_TF_family_V4_id.bed -b ear_specific_super_peaks -f 0.5 -wa -u > TFs_gene_in_ear_specific_super_peaks.bed
bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Transcription_factor_famile/maize_TF_family_V4_id.bed -b seedling_specific_super_peaks -f 0.5 -wa -u > TFs_gene_in_seedling_specific_super_peaks.bed
bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Zea_mays_B73_AGPv4_genes.bed -b ear_specific_super_peaks -f 0.5 -wa -u > gene_in_ear_specific_super_peaks.bed
bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Zea_mays_B73_AGPv4_genes.bed -b seedling_specific_super_peaks -f 0.5 -wa -u > gene_in_seedling_specific_super_peaks.bed

perl get_gene_annotation_with_unique_interaction.pl TFs_gene_in_ear_specific_super_peaks.bed /NAS1/lien/data/maize/B73_AGPV4/mazie_V4_genes_anno TFs_gene_in_ear_specific_super_peaks.annotation
perl get_gene_annotation_with_unique_interaction.pl TFs_gene_in_seedling_specific_super_peaks.bed /NAS1/lien/data/maize/B73_AGPV4/mazie_V4_genes_anno TFs_gene_in_seedling_specific_super_peaks.annotation
perl get_gene_annotation_with_unique_interaction.pl gene_in_ear_specific_super_peaks.bed /NAS1/lien/data/maize/B73_AGPV4/mazie_V4_genes_anno gene_in_ear_specific_super_peaks.annotation
perl get_gene_annotation_with_unique_interaction.pl gene_in_seedling_specific_super_peaks.bed /NAS1/lien/data/maize/B73_AGPV4/mazie_V4_genes_anno gene_in_seedling_specific_super_peaks.annotation

perl get_gene_genetic_annotation.pl TFs_gene_in_ear_specific_super_peaks.bed /NAS1/lien/data/maize/genetic_annotation/B73_AGPV4_genetic_annotation_info.AGPV4.txt coreset110_gene_list.genetic.annotation
perl get_gene_genetic_annotation.pl gene_in_ear_specific_super_peaks.bed /NAS1/lien/data/maize/genetic_annotation/B73_AGPV4_genetic_annotation_info.AGPV4.txt gene_in_ear_specific_super_peaks.genetic.annotation
#bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Zea_mays_B73_AGPv4_genes.bed -b seedling_super_peaks -f 0.5 -wo > gene_in_seedling_super_peaks
#bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Zea_mays_B73_AGPv4_genes.bed -b ear_super_peaks -f 0.5 -wo > gene_in_ear_super_peaks
#bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Zea_mays_B73_AGPv4_genes.bed -b seedling_super_peaks_without_CK -f 0.5 -wa -u > gene_in_seedling_super_peaks.bed
#bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Zea_mays_B73_AGPv4_genes.bed -b ear_super_peaks_without_CK -f 0.5 -wa -u > gene_in_ear_super_peaks.bed
#perl get_gene_annotation_with_unique_interaction.pl gene_in_ear_super_peaks.bed /NAS1/lien/data/maize/B73_AGPV4/mazie_V4_genes_anno gene_in_ear_super_peaks.annotation
#perl get_gene_annotation_with_unique_interaction.pl gene_in_seedling_super_peaks.bed /NAS1/lien/data/maize/B73_AGPV4/mazie_V4_genes_anno gene_in_seedling_super_peaks.annotation
#bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Transcription_factor_famile/maize_TF_family_V4_id.bed -b seedling_super_peaks -f 0.5 -wo > TFs_gene_in_seedling_super_peaks
#bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Transcription_factor_famile/maize_TF_family_V4_id.bed -b ear_super_peaks -f 0.5 -wo >TFs_gene_in_ear_super_peaks
bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Transcription_factor_famile/maize_TF_family_V4_id.bed -b seedling_specific_super_peaks f 0.5 -wo > TFs_gene_in_seedling_super_peaks_wo
bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Transcription_factor_famile/maize_TF_family_V4_id.bed -b ear_specific_super_peaks f 0.5 -wo > TFs_gene_in_ear_super_peaks_wo

bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Zea_mays_B73_AGPv4_genes.bed -b seedling_super_peaks_without_CK -f 0.5 -wa -u > gene_in_seedling_super_peaks.bed
bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Zea_mays_B73_AGPv4_genes.bed -b ear_super_peaks_without_CK -f 0.5 -wa -u > gene_in_ear_super_peaks.bed
bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Transcription_factor_famile/maize_TF_family_V4_id.bed -b seedling_super_peaks_without_CK -f 0.5 -wa -u > TFs_gene_in_seedling_super_peaks.bed
bedtools intersect -a /NAS1/lien/data/maize/B73_AGPV4/Transcription_factor_famile/maize_TF_family_V4_id.bed -b ear_super_peaks_without_CK -f 0.5 -wa -u > TFs_gene_in_ear_super_peaks.bed
