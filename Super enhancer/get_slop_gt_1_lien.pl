#!/usr/bin/perl -w
use strict;

my($in,$out)=@ARGV;
open IN,"$in" or die;
my $line=0;
my %hash;
my %hash_row;
while(<IN>){
	chomp;
	$line++;
	my @ss=split;
	$hash{$line}=$ss[4];
	$hash_row{$line}=$_;
}
close IN;
open OUT,"+>$out" or die;
for(my $i=1;$i<=$line;$i++){
	if(($i+1)<=$line){
		if($hash{$i+1}-$hash{$i}>=1){
			print OUT "$hash_row{$i}\t$i\n";
		}
	}
}
close OUT;
