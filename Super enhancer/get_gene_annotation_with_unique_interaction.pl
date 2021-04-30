#!/usr/bin/perl -w
use strict;
my ($in,$an,$out)=@ARGV;
open AN,"$an" or die;
my $header=<AN>;
my %hash;
while(<AN>){
	chomp;
	my @ss=split;
	$hash{$ss[0]}=$_;
}
close AN;
open IN,"$in" or die;
open OUT,"+>$out" or die;
while(<IN>){
	chomp;
	my @ss=split;
	if(exists $hash{$ss[3]}){
		print OUT "$ss[3]\t$hash{$ss[3]}\n";
	}else{
		print OUT "$ss[3]\tNo annotation\n";
	}
}
close IN;
close OUT;
