#!/usr/bin/perl -w
use strict;

my ($in,$gene,$out)=@ARGV;
open IN,"$in" or die;
my %hash;
while(<IN>){
	chomp;
	my @ss=split;
	my @gene=split(/\\/,$ss[10]);
	for(my $i=1;$i<=@gene-1;$i++){
		$hash{$gene[$i]}=1;
	}
}
close IN;
open G,"$gene" or die;
open OUT,"+>$out" or die;
while(<G>){
	chomp;
	my @ss=split;
	if(exists $hash{$ss[3]}){
		print OUT "$_\n";
	}
}
close G;
close OUT;
