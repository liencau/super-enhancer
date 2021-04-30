#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
#$ -pe make  1
#samtools view /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/SKIgG_map2AGPv4_q20.bt2.merge.srt.bam 1:256738507-256740283 > shoot_nonSE_example_Sd_H3K27ac_CK.sam
#samtools view /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/Sd_H3K27ac_map2AGPv4_q20.bt2.merge.srt.bam 1:256738507-256740283 > shoot_nonSE_example_Sd_H3K27ac.sam

#samtools view /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/Ear_H3K27ac_map2AGPv4_q20.bt2.merge.srt.bam 4:155998315-156001034 > ear_nonSE_example_Ear_H3K27ac.sam
#samtools view /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/EKIgG_map2AGPv4_q20.bt2.merge.srt.bam 4:155998315-156001034 > ear_nonSE_example_Ear_H3K27ac_CK.sam

#samtools view -H /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/Ear_H3K27ac_map2AGPv4_q20.bt2.merge.srt.bam > Ear_H3K27ac.header
#samtools view -H /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/Sd_H3K27ac_map2AGPv4_q20.bt2.merge.srt.bam > Sd_H3K27ac.header

#cat Ear_H3K27ac.header ear_nonSE_example_Ear_H3K27ac.sam | samtools view -bS -h - | samtools sort - ear_nonSE_example_Ear_H3K27ac.srt
#cat Ear_H3K27ac.header ear_nonSE_example_Ear_H3K27ac_CK.sam | samtools view -bS -h - | samtools sort - ear_nonSE_example_Ear_H3K27ac_CK.srt
#cat Sd_H3K27ac.header shoot_nonSE_example_Sd_H3K27ac.sam | samtools view -bS -h - | samtools sort - shoot_nonSE_example_Sd_H3K27ac_CK.srt
#cat Sd_H3K27ac.header shoot_nonSE_example_Sd_H3K27ac_CK.sam | samtools view -bS -h - | samtools sort - shoot_nonSE_example_Sd_H3K27ac_CK.srt
#samtools index ear_nonSE_example_Ear_H3K27ac.srt.bam
#samtools index ear_nonSE_example_Ear_H3K27ac_CK.srt.bam
#samtools index shoot_nonSE_example_Sd_H3K27ac.srt.bam
#samtools index shoot_nonSE_example_Sd_H3K27ac_CK.srt.bam

###
#samtools view /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/Sd_H3K27ac_map2AGPv4_q20.bt2.merge.srt.bam 10 > shoot_chr10_Sd_H3K27ac.sam
#cat Sd_H3K27ac.header shoot_chr10_Sd_H3K27ac.sam  | samtools view -bS -h - | samtools sort -  shoot_chr10_Sd_H3K27ac.srt
#samtools index  shoot_chr10_Sd_H3K27ac.srt.bam
samtools view /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/SKIgG_map2AGPv4_q20.bt2.merge.srt.bam 10 > shoot_chr10_Sd_H3K27ac_CK.sam
cat Sd_H3K27ac.header shoot_chr10_Sd_H3K27ac_CK.sam | samtools view -bS -h - | samtools sort -  shoot_chr10_Sd_H3K27ac_CK.srt
samtools index shoot_chr10_Sd_H3K27ac_CK.srt.bam

#samtools view /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/Ear_H3K27ac_map2AGPv4_q20.bt2.merge.srt.bam 10 > ear_chr10_ear_H3K27ac.sam
#cat Ear_H3K27ac.header ear_chr10_ear_H3K27ac.sam | samtools view -bS -h - | samtools sort - ear_chr10_ear_H3K27ac.srt
#samtools index ear_chr10_ear_H3K27ac.srt.bam

#samtools view /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/EKIgG_map2AGPv4_q20.bt2.merge.srt.bam 10 > ear_chr10_ear_H3K27ac_CK.sam
#cat Ear_H3K27ac.header ear_chr10_ear_H3K27ac_CK.sam | samtools view -bS -h - | samtools sort - ear_chr10_ear_H3K27ac_CK.srt
#samtools index ear_chr10_ear_H3K27ac_CK.srt.bam
