#!/usr/bin/perl -w
use strict;

my($in,$s,$out)=@ARGV;
open IN,"$in" or die;
my %hash;
while(<IN>){
	chomp;
	my @ss=split;
	$hash{$ss[3]}=1;
}
close IN;

open S,"$s" or die;
open OUT,"+>$out" or die;
my $header=<S>;
while(<S>){
	chomp;
	my @ss=split;
	if(exists $hash{$ss[0]}){
		print OUT "$_\n";
	}
}
close S;
close OUT;
