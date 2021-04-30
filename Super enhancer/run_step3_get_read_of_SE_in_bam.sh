#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
#$ -pe make  1
samtools view /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/Ear_H3K27ac_map2AGPv4_q20.bt2.merge.srt.bam 1:227425264-227441859 > shoot_specific_example_Ear_H3K27ac.sam
samtools view /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/Sd_H3K27ac_map2AGPv4_q20.bt2.merge.srt.bam 1:227425264-227441859 > shoot_specific_example_Sd_H3K27ac.sam

samtools view /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/Ear_H3K27ac_map2AGPv4_q20.bt2.merge.srt.bam 8:106914496-106933625 > ear_specific_example_Ear_H3K27ac.sam
samtools view /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/Sd_H3K27ac_map2AGPv4_q20.bt2.merge.srt.bam 8:106914496-106933625 > ear_specific_example_Sd_H3K27ac.sam

samtools view -H /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/Ear_H3K27ac_map2AGPv4_q20.bt2.merge.srt.bam > Ear_H3K27ac.header
samtools view -H /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/Sd_H3K27ac_map2AGPv4_q20.bt2.merge.srt.bam > Sd_H3K27ac.header

cat Ear_H3K27ac.header shoot_specific_example_Ear_H3K27ac.sam | samtools view -bS -h - | samtools sort - shoot_specific_example_Ear_H3K27ac.srt
cat Ear_H3K27ac.header ear_specific_example_Ear_H3K27ac.sam | samtools view -bS -h - | samtools sort - ear_specific_example_Ear_H3K27ac.srt
cat Sd_H3K27ac.header shoot_specific_example_Sd_H3K27ac.sam | samtools view -bS -h - | samtools sort - shoot_specific_example_Sd_H3K27ac.srt
cat Sd_H3K27ac.header ear_specific_example_Sd_H3K27ac.sam | samtools view -bS -h - | samtools sort - ear_specific_example_Sd_H3K27ac.srt
samtools index shoot_specific_example_Ear_H3K27ac.srt.bam
samtools index ear_specific_example_Ear_H3K27ac.srt.bam
samtools index shoot_specific_example_Sd_H3K27ac.srt.bam
samtools index ear_specific_example_Sd_H3K27ac.srt.bam
