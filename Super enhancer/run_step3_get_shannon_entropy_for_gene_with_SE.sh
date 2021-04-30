#!/bin/bash
#$ -cwd
#$ -j y
#$ -S /bin/bash

bedtools intersect -a gene_in_ear_super_peaks.bed -b the_real_constitutive_gene_list_based_rpkm_over_1_converted2V4.bed -wa > gene_in_ear_super_peaks_in_constitutive_gene.bed
bedtools intersect -a gene_in_seedling_super_peaks.bed -b the_real_constitutive_gene_list_based_rpkm_over_1_converted2V4.bed -wa > gene_in_seedling_super_peaks_in_constitutive_gene.bed
bedtools intersect -a gene_in_ear_specific_super_peaks.overlap_1bp.bed -b the_real_constitutive_gene_list_based_rpkm_over_1_converted2V4.bed -wa > gene_in_ear_specific_super_peaks.overlap_1bp.in_constitutive_gene.bed
bedtools intersect -a gene_in_seedling_specific_super_peaks.overlap_1bp.bed -b the_real_constitutive_gene_list_based_rpkm_over_1_converted2V4.bed -wa > gene_in_seedling_specific_super_peaks.overlap_1bp.in_constitutive_gene.bed
bedtools intersect -a gene_interacting_with_typical_enhancer_in_ear.bed -b the_real_constitutive_gene_list_based_rpkm_over_1_converted2V4.bed -wa > gene_interacting_with_typical_enhancer_in_ear_in_constitutive_gene.bed
bedtools intersect -a gene_interacting_with_typical_enhancer_in_seedling.bed -b the_real_constitutive_gene_list_based_rpkm_over_1_converted2V4.bed -wa > gene_interacting_with_typical_enhancer_in_seedling_in_constitutive_gene.bed
bedtools intersect -a gene_in_ear_super_peaks.bed -b gene_in_seedling_super_peaks.bed -wa > gene_in_ear_super_peaks_overlapped_shoot.bed
bedtools intersect -a gene_interacting_with_typical_enhancer_in_ear.bed -b gene_interacting_with_typical_enhancer_in_seedling.bed -wa > gene_interacting_with_typical_enhancer_in_ear_overlapped_shoot.bed
###############
bedtools intersect -a gene_in_seedling_specific_super_peaks.bed -b /NAS2/lien/detect_specfic_gene_of_different_tissue_of_maize/tissue_specific_gene/BBs14_specific_gene.v4.bed -wa > gene_in_seedling_specific_super_peaks_in_shoot_specfic_gene.bed
bedtools intersect -a   gene_in_ear_specific_super_peaks.bed -b /NAS2/lien/detect_specfic_gene_of_different_tissue_of_maize/tissue_specific_gene/immature_ear_specific_gene.v4.bed -wa > gene_in_ear_specific_super_peaks_in_ear_specfic_gene.bed
####################
#perl extract_gene_shanno_based_id.pl gene_in_ear_super_peaks.bed shannon_entropy_for_gene_simply_map2V4.txt shannon_entropy_for_gene_in_ear_super_peaks.bed
#perl extract_gene_shanno_based_id.pl gene_in_seedling_super_peaks.bed shannon_entropy_for_gene_simply_map2V4.txt shannon_entropy_for_gene_in_seedling_super_peaks.bed
#perl extract_gene_shanno_based_id.pl gene_in_ear_specific_super_peaks.bed shannon_entropy_for_gene_simply_map2V4.txt shannon_entropy_for_gene_in_ear_specific_SE.bed
#perl extract_gene_shanno_based_id.pl gene_in_seedling_specific_super_peaks.bed shannon_entropy_for_gene_simply_map2V4.txt shannon_entropy_for_gene_in_shoot_specific_SE.bed
#############get typical enhancer

#bedtools intersect -a ../Sd_candidate_active_enhancer_with_H3K27ac_final_no_H3K4me3_v.bed -b seedling_super_peaks_without_CK -v > seedling_candidate_active_typic_enhancer
#bedtools intersect -a ../ear_candidate_active_enhancer_with_H3K27ac_final_no_H3K4me3_v.bed -b ear_super_peaks_without_CK -v > ear_candidate_active_typic_enhancer

############get gene interacting with typical enhancer
#bedtools intersect -a /NAS4/lien/Chia-pet_B73_AGPV4/ear_H3K27ac/interaction_peak_renew_fdr_0.01/get_overlapped_with_H3k4me3_renew/identity_three_types_interacting_model/combined_active_and_poised_E/summary_P_E_inaction/ear_interaction_peak_3pets_intrachr_merged_enhancer_promoter_all_combined -b ear_candidate_active_typic_enhancer -wo > gene_interacting_with_typical_enhancer_in_ear.bedpe
#perl get_gene_interacting_with_genic_enhancer.pl gene_interacting_with_typical_enhancer_in_ear.bedpe /NAS1/lien/data/maize/B73_AGPV4/Zea_mays_B73_AGPv4_genes.bed gene_interacting_with_typical_enhancer_in_ear.bed 

#bedtools intersect -a /NAS4/lien/Chia-pet_B73_AGPV4/seedling_H3K27ac/interaction_peak_renew_fdr_0.01/get_overlapped_with_H3k4me3_renew/identity_three_types_interacting_model/combined_active_and_poised_E/summary_P_E_inaction/seedling_interaction_peak_3pets_intrachr_merged_enhancer_promoter_all_combined -b seedling_candidate_active_typic_enhancer -wo > gene_interacting_with_typical_enhancer_in_seedling.bedpe
#perl get_gene_interacting_with_genic_enhancer.pl gene_interacting_with_typical_enhancer_in_seedling.bedpe /NAS1/lien/data/maize/B73_AGPV4/Zea_mays_B73_AGPv4_genes.bed gene_interacting_with_typical_enhancer_in_seedling.bed
#######################
#perl extract_gene_shanno_based_id.pl gene_interacting_with_typical_enhancer_in_seedling.bed shannon_entropy_for_gene_simply_map2V4.txt shannon_entropy_for_gene_interacting_with_typical_enhancer_in_seedling.bed
#perl extract_gene_shanno_based_id.pl gene_interacting_with_typical_enhancer_in_ear.bed shannon_entropy_for_gene_simply_map2V4.txt shannon_entropy_for_gene_interacting_with_typical_enhancer_in_ear.bed
