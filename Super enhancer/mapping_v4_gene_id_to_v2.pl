#!/usr/bin/perl -w
use strict;

my ($map,$in,$out)=@ARGV;
open M,"$map" or die;
my $head=<M>;
my %hash_map;
while(<M>){
	chomp;
	my @ss=split;
	$hash_map{$ss[1]}=$ss[0];
}
close M;

open IN,"$in" or die;
open OUT,"+>$out" or die;
while(<IN>){
	chomp;
	my @ss=split;
#	my $col_num=@ss-1;
#	my $line=join("\t",@ss[1..$col_num]);
	if(exists $hash_map{$ss[3]}){
		my $id_v2=$hash_map{$ss[3]};
		print OUT "$id_v2\t$ss[1]\n";
	}	
}
close OUT;
close IN;
