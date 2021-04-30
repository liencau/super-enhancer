#bedtools intersect -a ../ear_candidate_active_enhancer_with_H3K27ac_final_no_H3K4me3_v.bed -b  ear_nonSE_example.bed -wa -u > ear_candidate_active_enhancer_in_nonSE.bed
#bedtools intersect -a ../Sd_candidate_active_enhancer_with_H3K27ac_final_no_H3K4me3_v.bed -b  Sd_nonSE_example.bed -wa -u > shoot_candidate_active_enhancer_in_nonSE.bed
bedtools intersect -a ../ear_candidate_active_enhancer_with_H3K27ac_final_no_H3K4me3_v.bed -b ear_SE_example.bed -wa -u > ear_candidate_active_enhancer_in_SE.bed
bedtools intersect -a ../Sd_candidate_active_enhancer_with_H3K27ac_final_no_H3K4me3_v.bed -b Sd_SE_example.bed -wa -u > Sd_candidate_active_enhancer_in_SE.bed
