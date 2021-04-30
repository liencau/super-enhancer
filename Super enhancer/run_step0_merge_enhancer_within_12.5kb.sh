#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
#$ -pe make 1 
perl merge_12.5K.pl Sd_candidate_active_enhancer_with_H3K27ac_final_no_H3K4me3_sorted.bed seedling_adjacent_peaks_lien
perl merge_12.5K.pl ear_candidate_active_enhancer_with_H3K27ac_final_no_H3K4me3_sorted.bed ear_adjacent_peaks_lien
