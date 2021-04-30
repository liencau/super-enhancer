#!/usr/bin/perl
use strict;
my ($file,$total_depth,$file_out)=@ARGV;

open F,"<",$file or die;
open O,">",$file_out or die;

while(<F>){
	chomp;
	my @arr=split;
	my $rpm=$arr[4]*1000000/$total_depth;
	print O $_,"\t$rpm\n";
}
