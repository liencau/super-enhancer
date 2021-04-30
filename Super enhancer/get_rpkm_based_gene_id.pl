#!/usr/bin/perl -w
use strict;

my ($g,$r,$out)=@ARGV;
open G,"$g" or die;
my %hash;
while(<G>){
	chomp;
	my @ss=split;
	$hash{$ss[3]}=$_;
}
close G;

open R,"$r" or die;
open OUT, "+>$out" or die;
while(<R>){
	chomp;
	my @ss=split;
	if(exists $hash{$ss[0]}){
		print OUT "$hash{$ss[0]}\t$ss[1]\t$ss[3]\n";
	}	
}
close R;
close OUT;
