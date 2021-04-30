#!/bin/bash
#
#$ -cwd
#$ -j y
#
#$ -S /bin/bash

#perl get_gff_info_in_constrainted_region.pl /NAS1/lien/data/maize/B73_AGPV4/Zea_mays.AGPv4.34.chr.gff3 2:197960045:197974047 SE1_region
#perl modify_gff_info.pl SE1_region SE1_region_modified

#perl get_gff_info_in_constrainted_region.pl /NAS1/lien/data/maize/B73_AGPV4/Zea_mays.AGPv4.34.chr.gff3 2:197950045:197984047 SE1_region_v2
#perl modify_gff_info.pl SE1_region_v2 SE1_region_modified_v2
perl get_gff_info_in_constrainted_region.pl /NAS1/lien/data/maize/B73_AGPV4/Zea_mays.AGPv4.34.chr.gff3 2:13946914:13963307 SE2_region_v2
perl modify_gff_info.pl SE2_region_v2 SE2_region_modified_v2
perl get_gff_info_in_constrainted_region.pl /NAS1/lien/data/maize/B73_AGPV4/Zea_mays.AGPv4.34.chr.gff3 2:201386910:201403877 SE3_region_v2
perl modify_gff_info.pl SE3_region_v2 SE3_region_modified_v2
perl get_gff_info_in_constrainted_region.pl /NAS1/lien/data/maize/B73_AGPV4/Zea_mays.AGPv4.34.chr.gff3 5:191136711:191158351 SE4_region_v2
perl modify_gff_info.pl SE4_region_v2 SE4_region_modified_v2
perl get_gff_info_in_constrainted_region.pl /NAS1/lien/data/maize/B73_AGPV4/Zea_mays.AGPv4.34.chr.gff3 9:135478595:135504384 SE5_region_v2
perl modify_gff_info.pl SE5_region_v2 SE5_region_modified_v2
perl get_gff_info_in_constrainted_region.pl /NAS1/lien/data/maize/B73_AGPV4/Zea_mays.AGPv4.34.chr.gff3 9:149604009:149629325 SE6_region_v2
perl modify_gff_info.pl SE6_region_v2 SE6_region_modified_v2

#2       13946914        13963307 Zm00001d002494
#2       201386910       201403877 Zm00001d006198
#5       191136711       191158351 Zm00001d017268
#9       135478595       135504384 Zm00001d047559
#9       149604009       149629325 Zm00001d048082
#perl get_gff_info_in_constrainted_region.pl /NAS1/lien/data/maize/B73_AGPV4/Zea_mays.AGPv4.34.chr.gff3 2:133474536:133508538 TE1_region_v2
#perl modify_gff_info.pl TE1_region_v2 TE1_region_modified_v2
