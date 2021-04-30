#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
#$ -pe make  1


#
#perl get_average_count.pl seedling_super_peaks
#perl get_average_count.pl ear_super_peaks
#
#perl get_proportion_count.pl ear_adjacent_peaks_with_total_rpm-bp_sorted 27772
#perl get_proportion_count.pl seedling_adjacent_peaks_with_total_rpm-bp_sorted 24754
#cat  ear_adjacent_peaks_with_total_depth_without_CK |sort -n -k 5 >ear_adjacent_peaks_with_total_depth_without_CK_sorted
#cat  seedling_adjacent_peaks_with_total_depth_without_CK |sort -n -k 5 > seedling_adjacent_peaks_with_total_depth_without_CK_sorted
#perl get_slop_gt_1.pl ear_adjacent_peaks_with_total_depth_without_CK_sorted ear_super_peaks_without_CK
#perl get_slop_gt_1.pl seedling_adjacent_peaks_with_total_depth_without_CK_sorted seedling_super_peaks_without_CK


#bedtools intersect -a ear_super_peaks_without_CK -b seedling_super_peaks_without_CK -wa -u > super_peaks_common_between_two_tissues
#bedtools intersect -a ear_super_peaks_without_CK -b seedling_super_peaks_without_CK -v > ear_specific_super_peaks
#bedtools intersect -a seedling_super_peaks_without_CK -b ear_super_peaks_without_CK -v > seedling_specific_super_peaks
perl generate_input_for_venn.pl 1068 792 438 overlapped_SE_in_ear.input1 overlapped_SE_in_shoot.input2
#/NAS2/zhangxiangbo/software/R-3.1.2/bin/R --vanilla --slave <draw_venn_for_overlapped_interaction_peaks_ear.R
