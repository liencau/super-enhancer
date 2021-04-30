#!/bin/bash
#
#$ -cwd
#$ -j y
#
#$  -S /bin/bash

#bedtools intersect -a /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/call_peak_without_CK/Ear_H3K27ac_rep3_map2AGPv4_peak_p5_MACS_wiggle/treat/Ear_H3K27ac_rep3_map2AGPv4_peak_p5_treat_afterfiting_2.pileup -b SE1_Zm00001d006094_ear.bed -wa -u > ear_SE1_H3K27ac
#perl generate.v2.pl ear_SE1_H3K27ac 152995301 ear_SE1_H3K27ac.nor
#bedtools intersect -a /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/call_peak_without_CK/Sd_H3K27ac_rep3_map2AGPv4_peak_p5_MACS_wiggle/treat/Sd_H3K27ac_rep3_map2AGPv4_peak_p5_treat_afterfiting_2.pileup -b SE1_Zm00001d006094_ear.bed -wa -u > seedling_SE1_H3K27ac
#perl generate.v2.pl seedling_SE1_H3K27ac 132661619 seedling_SE1_H3K27ac.nor


#bedtools intersect -a /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/call_peak_without_CK/Ear_H3K27ac_rep3_map2AGPv4_peak_p5_MACS_wiggle/treat/Ear_H3K27ac_rep3_map2AGPv4_peak_p5_treat_afterfiting_2.pileup -b TE1_region.bed -wa -u > ear_TE1_H3K27ac
#perl generate.v2.pl ear_TE1_H3K27ac 152995301 ear_TE1_H3K27ac.nor
#bedtools intersect -a /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/call_peak_without_CK/Sd_H3K27ac_rep3_map2AGPv4_peak_p5_MACS_wiggle/treat/Sd_H3K27ac_rep3_map2AGPv4_peak_p5_treat_afterfiting_2.pileup -b TE1_region.bed -wa -u > seedling_TE1_H3K27ac
#perl generate.v2.pl seedling_TE1_H3K27ac 132661619 seedling_TE1_H3K27ac.nor


#####################
#bedtools intersect -a /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/call_peak_without_CK/Ear_H3K27ac_rep3_map2AGPv4_peak_p5_MACS_wiggle/treat/Ear_H3K27ac_rep3_map2AGPv4_peak_p5_treat_afterfiting_2.pileup -b SE1_Zm00001d006094_ear.v2.bed -wa -u > ear_SE1_H3K27ac_v2
#perl generate.v2.pl ear_SE1_H3K27ac_v2 152995301 ear_SE1_H3K27ac_v2.nor
#bedtools intersect -a /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/call_peak_without_CK/Sd_H3K27ac_rep3_map2AGPv4_peak_p5_MACS_wiggle/treat/Sd_H3K27ac_rep3_map2AGPv4_peak_p5_treat_afterfiting_2.pileup -b SE1_Zm00001d006094_ear.v2.bed -wa -u > seedling_SE1_H3K27ac_v2
#perl generate.v2.pl seedling_SE1_H3K27ac_v2 132661619 seedling_SE1_H3K27ac_v2.nor

#bedtools intersect -a /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/call_peak_without_CK/Ear_H3K27ac_rep3_map2AGPv4_peak_p5_MACS_wiggle/treat/Ear_H3K27ac_rep3_map2AGPv4_peak_p5_treat_afterfiting_2.pileup -b SE2_Zm00001d002494_ear.v2.bed -wa -u > ear_SE2_H3K27ac_v2
#perl generate.v2.pl ear_SE2_H3K27ac_v2 152995301 ear_SE2_H3K27ac_v2.nor
#bedtools intersect -a /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/call_peak_without_CK/Sd_H3K27ac_rep3_map2AGPv4_peak_p5_MACS_wiggle/treat/Sd_H3K27ac_rep3_map2AGPv4_peak_p5_treat_afterfiting_2.pileup -b SE2_Zm00001d002494_ear.v2.bed -wa -u > seedling_SE2_H3K27ac_v2
#perl generate.v2.pl seedling_SE2_H3K27ac_v2 132661619 seedling_SE2_H3K27ac_v2.nor

#bedtools intersect -a /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/call_peak_without_CK/Ear_H3K27ac_rep3_map2AGPv4_peak_p5_MACS_wiggle/treat/Ear_H3K27ac_rep3_map2AGPv4_peak_p5_treat_afterfiting_2.pileup -b SE3_Zm00001d006198_ear.v2.bed -wa -u > ear_SE3_H3K27ac_v2
#perl generate.v2.pl ear_SE3_H3K27ac_v2 152995301 ear_SE3_H3K27ac_v2.nor
#bedtools intersect -a /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/call_peak_without_CK/Sd_H3K27ac_rep3_map2AGPv4_peak_p5_MACS_wiggle/treat/Sd_H3K27ac_rep3_map2AGPv4_peak_p5_treat_afterfiting_2.pileup -b SE3_Zm00001d006198_ear.v2.bed -wa -u > seedling_SE3_H3K27ac_v2
#perl generate.v2.pl seedling_SE3_H3K27ac_v2 132661619 seedling_SE3_H3K27ac_v2.nor
#
#bedtools intersect -a /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/call_peak_without_CK/Ear_H3K27ac_rep3_map2AGPv4_peak_p5_MACS_wiggle/treat/Ear_H3K27ac_rep3_map2AGPv4_peak_p5_treat_afterfiting_5.pileup -b SE4_Zm00001d017268_ear.v2.bed -wa -u > ear_SE4_H3K27ac_v2
#perl generate.v2.pl ear_SE4_H3K27ac_v2 152995301 ear_SE4_H3K27ac_v2.nor
#bedtools intersect -a /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/call_peak_without_CK/Sd_H3K27ac_rep3_map2AGPv4_peak_p5_MACS_wiggle/treat/Sd_H3K27ac_rep3_map2AGPv4_peak_p5_treat_afterfiting_5.pileup -b SE4_Zm00001d017268_ear.v2.bed -wa -u > seedling_SE4_H3K27ac_v2
#perl generate.v2.pl seedling_SE4_H3K27ac_v2 132661619 seedling_SE4_H3K27ac_v2.nor
#
#bedtools intersect -a /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/call_peak_without_CK/Ear_H3K27ac_rep3_map2AGPv4_peak_p5_MACS_wiggle/treat/Ear_H3K27ac_rep3_map2AGPv4_peak_p5_treat_afterfiting_9.pileup -b SE5_Zm00001d047559_ear.v2.bed -wa -u > ear_SE5_H3K27ac_v2
#perl generate.v2.pl ear_SE5_H3K27ac_v2 152995301 ear_SE5_H3K27ac_v2.nor
#bedtools intersect -a /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/call_peak_without_CK/Sd_H3K27ac_rep3_map2AGPv4_peak_p5_MACS_wiggle/treat/Sd_H3K27ac_rep3_map2AGPv4_peak_p5_treat_afterfiting_9.pileup -b SE5_Zm00001d047559_ear.v2.bed -wa -u > seedling_SE5_H3K27ac_v2
#perl generate.v2.pl seedling_SE5_H3K27ac_v2 132661619 seedling_SE5_H3K27ac_v2.nor
#
#bedtools intersect -a /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/call_peak_without_CK/Ear_H3K27ac_rep3_map2AGPv4_peak_p5_MACS_wiggle/treat/Ear_H3K27ac_rep3_map2AGPv4_peak_p5_treat_afterfiting_9.pileup -b SE6_Zm00001d048082_ear.v2.bed -wa -u > ear_SE6_H3K27ac_v2
#perl generate.v2.pl ear_SE6_H3K27ac_v2 152995301 ear_SE6_H3K27ac_v2.nor
#bedtools intersect -a /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/call_peak_without_CK/Sd_H3K27ac_rep3_map2AGPv4_peak_p5_MACS_wiggle/treat/Sd_H3K27ac_rep3_map2AGPv4_peak_p5_treat_afterfiting_9.pileup -b SE6_Zm00001d048082_ear.v2.bed -wa -u > seedling_SE6_H3K27ac_v2
#perl generate.v2.pl seedling_SE6_H3K27ac_v2 132661619 seedling_SE6_H3K27ac_v2.nor
######################
#perl -e 'while(<>){chomp;@ss=split;$stt=int(($ss[1]+$ss[2])/2-17001);$end=$stt+34002;print "$ss[0]\t$stt\t$end\t$ss[3]\n";}' SE2_Zm00001d002494_ear.v2.bed > SE2_Zm00001d002494_ear.v3.bed
#perl -e 'while(<>){chomp;@ss=split;$stt=int(($ss[1]+$ss[2])/2-17001);$end=$stt+34002;print "$ss[0]\t$stt\t$end\t$ss[3]\n";}' SE3_Zm00001d006198_ear.v2.bed > SE3_Zm00001d006198_ear.v3.bed
#perl -e 'while(<>){chomp;@ss=split;$stt=int(($ss[1]+$ss[2])/2-17001);$end=$stt+34002;print "$ss[0]\t$stt\t$end\t$ss[3]\n";}' SE4_Zm00001d017268_ear.v2.bed > SE4_Zm00001d017268_ear.v3.bed
#perl -e 'while(<>){chomp;@ss=split;$stt=int(($ss[1]+$ss[2])/2-17001);$end=$stt+34002;print "$ss[0]\t$stt\t$end\t$ss[3]\n";}' SE5_Zm00001d047559_ear.v2.bed > SE5_Zm00001d047559_ear.v3.bed
#perl -e 'while(<>){chomp;@ss=split;$stt=int(($ss[1]+$ss[2])/2-17001);$end=$stt+34002;print "$ss[0]\t$stt\t$end\t$ss[3]\n";}' SE6_Zm00001d048082_ear.v2.bed > SE6_Zm00001d048082_ear.v3.bed
##################

bedtools intersect -a /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/call_peak_without_CK/Ear_H3K27ac_rep3_map2AGPv4_peak_p5_MACS_wiggle/treat/Ear_H3K27ac_rep3_map2AGPv4_peak_p5_treat_afterfiting_2.pileup -b SE2_Zm00001d002494_ear.v3.bed -wa -u > ear_SE2_H3K27ac_v3
perl generate.v2.pl ear_SE2_H3K27ac_v3 152995301 ear_SE2_H3K27ac_v3.nor
bedtools intersect -a /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/call_peak_without_CK/Sd_H3K27ac_rep3_map2AGPv4_peak_p5_MACS_wiggle/treat/Sd_H3K27ac_rep3_map2AGPv4_peak_p5_treat_afterfiting_2.pileup -b SE2_Zm00001d002494_ear.v3.bed -wa -u > seedling_SE2_H3K27ac_v3
perl generate.v2.pl seedling_SE2_H3K27ac_v3 132661619 seedling_SE2_H3K27ac_v3.nor

bedtools intersect -a /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/call_peak_without_CK/Ear_H3K27ac_rep3_map2AGPv4_peak_p5_MACS_wiggle/treat/Ear_H3K27ac_rep3_map2AGPv4_peak_p5_treat_afterfiting_2.pileup -b SE3_Zm00001d006198_ear.v3.bed -wa -u > ear_SE3_H3K27ac_v3
perl generate.v2.pl ear_SE3_H3K27ac_v3 152995301 ear_SE3_H3K27ac_v3.nor
bedtools intersect -a /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/call_peak_without_CK/Sd_H3K27ac_rep3_map2AGPv4_peak_p5_MACS_wiggle/treat/Sd_H3K27ac_rep3_map2AGPv4_peak_p5_treat_afterfiting_2.pileup -b SE3_Zm00001d006198_ear.v3.bed -wa -u > seedling_SE3_H3K27ac_v3
perl generate.v2.pl seedling_SE3_H3K27ac_v3 132661619 seedling_SE3_H3K27ac_v3.nor

bedtools intersect -a /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/call_peak_without_CK/Ear_H3K27ac_rep3_map2AGPv4_peak_p5_MACS_wiggle/treat/Ear_H3K27ac_rep3_map2AGPv4_peak_p5_treat_afterfiting_5.pileup -b SE4_Zm00001d017268_ear.v3.bed -wa -u > ear_SE4_H3K27ac_v3
perl generate.v2.pl ear_SE4_H3K27ac_v3 152995301 ear_SE4_H3K27ac_v3.nor
bedtools intersect -a /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/call_peak_without_CK/Sd_H3K27ac_rep3_map2AGPv4_peak_p5_MACS_wiggle/treat/Sd_H3K27ac_rep3_map2AGPv4_peak_p5_treat_afterfiting_5.pileup -b SE4_Zm00001d017268_ear.v3.bed -wa -u > seedling_SE4_H3K27ac_v3
perl generate.v2.pl seedling_SE4_H3K27ac_v3 132661619 seedling_SE4_H3K27ac_v3.nor

bedtools intersect -a /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/call_peak_without_CK/Ear_H3K27ac_rep3_map2AGPv4_peak_p5_MACS_wiggle/treat/Ear_H3K27ac_rep3_map2AGPv4_peak_p5_treat_afterfiting_9.pileup -b SE5_Zm00001d047559_ear.v3.bed -wa -u > ear_SE5_H3K27ac_v3
perl generate.v2.pl ear_SE5_H3K27ac_v3 152995301 ear_SE5_H3K27ac_v3.nor
bedtools intersect -a /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/call_peak_without_CK/Sd_H3K27ac_rep3_map2AGPv4_peak_p5_MACS_wiggle/treat/Sd_H3K27ac_rep3_map2AGPv4_peak_p5_treat_afterfiting_9.pileup -b SE5_Zm00001d047559_ear.v3.bed -wa -u > seedling_SE5_H3K27ac_v3
perl generate.v2.pl seedling_SE5_H3K27ac_v3 132661619 seedling_SE5_H3K27ac_v3.nor

bedtools intersect -a /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/call_peak_without_CK/Ear_H3K27ac_rep3_map2AGPv4_peak_p5_MACS_wiggle/treat/Ear_H3K27ac_rep3_map2AGPv4_peak_p5_treat_afterfiting_9.pileup -b SE6_Zm00001d048082_ear.v3.bed -wa -u > ear_SE6_H3K27ac_v3
perl generate.v2.pl ear_SE6_H3K27ac_v3 152995301 ear_SE6_H3K27ac_v3.nor
bedtools intersect -a /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/call_peak_without_CK/Sd_H3K27ac_rep3_map2AGPv4_peak_p5_MACS_wiggle/treat/Sd_H3K27ac_rep3_map2AGPv4_peak_p5_treat_afterfiting_9.pileup -b SE6_Zm00001d048082_ear.v3.bed -wa -u > seedling_SE6_H3K27ac_v3
perl generate.v2.pl seedling_SE6_H3K27ac_v3 132661619 seedling_SE6_H3K27ac_v3.nor

#bedtools intersect -a /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/call_peak_without_CK/Ear_H3K27ac_rep3_map2AGPv4_peak_p5_MACS_wiggle/treat/Ear_H3K27ac_rep3_map2AGPv4_peak_p5_treat_afterfiting_2.pileup -b TE1_region.v2.bed -wa -u > ear_TE1_H3K27ac_v2
#perl generate.v2.pl ear_TE1_H3K27ac_v2 152995301 ear_TE1_H3K27ac_v2.nor
#bedtools intersect -a /NAS4/lien/chip_seq/call_peak_add_CK/merge_repeats_and_generate_wig/call_peak_without_CK/Sd_H3K27ac_rep3_map2AGPv4_peak_p5_MACS_wiggle/treat/Sd_H3K27ac_rep3_map2AGPv4_peak_p5_treat_afterfiting_2.pileup -b TE1_region.v2.bed -wa -u > seedling_TE1_H3K27ac_v2
#perl generate.v2.pl seedling_TE1_H3K27ac_v2 132661619 seedling_TE1_H3K27ac_v2.nor
