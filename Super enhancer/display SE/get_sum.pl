#!/usr/bin/perl
use strict;

my($file)=@ARGV;
open F,"<",$file or die;

my $sum=0;
while(<F>){
	chomp;
	my @arr=split;
	$sum+=$arr[2];
}
print $sum ,"\n";
