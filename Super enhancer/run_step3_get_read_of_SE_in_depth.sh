#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
#$ -pe make  1

#perl get_depth_for_a_genome_region.pl ear_adjacent_peaks /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/Ear_H3K27ac_map2AGPv4_q20.bt2.merge.srt.bam >ear_adjacent_peaks_in_ear_H3K27ac.depth
#perl get_depth_for_a_genome_region.pl ear_adjacent_peaks /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/EKIgG_map2AGPv4_q20.bt2.merge.srt.bam > ear_adjacent_peaks_in_ear_H3K27ac_CK.depth

#perl get_depth_for_a_genome_region.pl seedling_adjacent_peaks /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/Sd_H3K27ac_map2AGPv4_q20.bt2.merge.srt.bam >seedling_adjacent_peaks_in_shoot_H3K27ac.depth
#perl get_depth_for_a_genome_region.pl seedling_adjacent_peaks /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/SKIgG_map2AGPv4_q20.bt2.merge.srt.bam >seedling_adjacent_peaks_in_shoot_H3K27ac_CK.depth

#perl normalized_depth.pl ear_adjacent_peaks_in_ear_H3K27ac.depth ear_adjacent_peaks_in_ear_H3K27ac_CK.depth 24787862042 12140520816 10 ear_adjacent_peaks_in_ear_H3K27ac.minus.chr10.depth
#perl normalized_depth.pl seedling_adjacent_peaks_in_shoot_H3K27ac.depth seedling_adjacent_peaks_in_shoot_H3K27ac_CK.depth 20679564608 12312766367 10 seedling_adjacent_peaks_in_shoot_H3K27ac.minus.chr10.depth
#sort -k1,1n -k2,2n seedling_adjacent_peaks_in_shoot_H3K27ac.minus.chr10.depth > seedling_adjacent_peaks_in_shoot_H3K27ac.minus.chr10.depth.srt
#sort -k1,1n -k2,2n ear_adjacent_peaks_in_ear_H3K27ac.minus.chr10.depth > ear_adjacent_peaks_in_ear_H3K27ac.minus.chr10.depth.srt
#perl normalized_depth.pl ear_adjacent_peaks_in_ear_H3K27ac.depth ear_adjacent_peaks_in_ear_H3K27ac_CK.depth 24787862042 12140520816 1 ear_adjacent_peaks_in_ear_H3K27ac.minus.chr1.depth
#perl normalized_depth.pl seedling_adjacent_peaks_in_shoot_H3K27ac.depth seedling_adjacent_peaks_in_shoot_H3K27ac_CK.depth 20679564608 12312766367 1 seedling_adjacent_peaks_in_shoot_H3K27ac.minus.chr1.depth
#sort -k1,1n -k2,2n seedling_adjacent_peaks_in_shoot_H3K27ac.minus.chr1.depth > seedling_adjacent_peaks_in_shoot_H3K27ac.minus.chr1.depth.srt
#sort -k1,1n -k2,2n ear_adjacent_peaks_in_ear_H3K27ac.minus.chr1.depth > ear_adjacent_peaks_in_ear_H3K27ac.minus.chr1.depth.srt

#perl normalized_depth.pl ear_adjacent_peaks_in_ear_H3K27ac.depth ear_adjacent_peaks_in_ear_H3K27ac_CK.depth 24787862042 12140520816 5 ear_adjacent_peaks_in_ear_H3K27ac.minus.chr5.depth
#perl normalized_depth.pl seedling_adjacent_peaks_in_shoot_H3K27ac.depth seedling_adjacent_peaks_in_shoot_H3K27ac_CK.depth 20679564608 12312766367 5 seedling_adjacent_peaks_in_shoot_H3K27ac.minus.chr5.depth
#sort -k1,1n -k2,2n seedling_adjacent_peaks_in_shoot_H3K27ac.minus.chr5.depth > seedling_adjacent_peaks_in_shoot_H3K27ac.minus.chr5.depth.srt
#sort -k1,1n -k2,2n ear_adjacent_peaks_in_ear_H3K27ac.minus.chr5.depth > ear_adjacent_peaks_in_ear_H3K27ac.minus.chr5.depth.srt
############################
awk '{print $1"\t"$2"\t"$2"\t"$3"\t"$4"\t"$5}' ear_adjacent_peaks_in_ear_H3K27ac.minus.chr1.depth > ear_adjacent_peaks_in_ear_H3K27ac.minus.chr1.depth.bedgraph
awk '{print $1"\t"$2"\t"$2"\t"$3"\t"$4"\t"$5}' ear_adjacent_peaks_in_ear_H3K27ac.minus.chr5.depth > ear_adjacent_peaks_in_ear_H3K27ac.minus.chr5.depth.bedgraph
awk '{print $1"\t"$2"\t"$2"\t"$3"\t"$4"\t"$5}' seedling_adjacent_peaks_in_shoot_H3K27ac.minus.chr1.depth > seedling_adjacent_peaks_in_shoot_H3K27ac.minus.chr1.depth.bedgraph
awk '{print $1"\t"$2"\t"$2"\t"$3"\t"$4"\t"$5}' seedling_adjacent_peaks_in_shoot_H3K27ac.minus.chr5.depth > seedling_adjacent_peaks_in_shoot_H3K27ac.minus.chr5.depth.bedgraph
awk '{print $1"\t"$2"\t"$2"\t"$3"\t"$4"\t"$5}' ear_adjacent_peaks_in_ear_H3K27ac.minus.chr10.depth > ear_adjacent_peaks_in_ear_H3K27ac.minus.chr10.depth.bedgraph
awk '{print $1"\t"$2"\t"$2"\t"$3"\t"$4"\t"$5}' seedling_adjacent_peaks_in_shoot_H3K27ac.minus.chr10.depth > seedling_adjacent_peaks_in_shoot_H3K27ac.minus.chr10.depth.bedgraph


