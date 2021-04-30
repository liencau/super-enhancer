#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
#$ -pe make 1 


#cat ../ear_candidate_active_enhancer_with_H3K27ac_final_no_H3K4me3_v.bed |sort -n -k1 -k2 -k3 > ear_candidate_active_enhancer_with_H3K27ac_final_no_H3K4me3_sorted.bed
#cat ../Sd_candidate_active_enhancer_with_H3K27ac_final_no_H3K4me3_v.bed |sort -n -k1 -k2 -k3 > Sd_candidate_active_enhancer_with_H3K27ac_final_no_H3K4me3_sorted.bed 

#perl get_adjacent_enhancer.pl ear_candidate_active_enhancer_with_H3K27ac_final_no_H3K4me3_sorted.bed ear_adjacent_peaks
#perl get_adjacent_enhancer.pl Sd_candidate_active_enhancer_with_H3K27ac_final_no_H3K4me3_sorted.bed  seedling_adjacent_peaks

#perl get_total_depth_for_a_genome_region.pl ear_adjacent_peaks /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/Ear_H3K27ac_map2AGPv4_q20.bt2.merge.srt.bam >ear_adjacent_peaks_with_total_depth_ear_CK

#perl get_total_depth_for_a_genome_region.pl seedling_adjacent_peaks /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/Sd_H3K27ac_map2AGPv4_q20.bt2.merge.srt.bam >seedling_adjacent_peaks_with_total_depth_seedling_CK

#perl get_depth.pl ear_adjacent_peaks_with_total_depth_ear_CK ear_adjacent_peaks_with_total_depth_without_CK 24787862042
#perl get_depth.pl seedling_adjacent_peaks_with_total_depth_seedling_CK seedling_adjacent_peaks_with_total_depth_without_CK 20679564608

#cat  ear_adjacent_peaks_with_total_depth_without_CK |sort -n -k 5 > ear_adjacent_peaks_with_total_depth_without_CK_sorted
#cat  seedling_adjacent_peaks_with_total_depth_without_CK |sort -n -k 5 > seedling_adjacent_peaks_with_total_depth_without_CK_sorted

perl get_slop_gt_1.pl ear_adjacent_peaks_with_total_depth_without_CK_sorted ear_super_peaks_without_CK
perl get_slop_gt_1.pl seedling_adjacent_peaks_with_total_depth_without_CK_sorted seedling_super_peaks_without_CK

awk '$4>=3' ear_super_peaks_without_CK > ear_super_peaks_without_CK_filter3
awk '$4>=3' seedling_super_peaks_without_CK > seedling_super_peaks_without_CK_filter3
