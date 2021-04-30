#!/usr/bin/perl
#
use strict;
my ($file1,$file_out,$depth1)=@ARGV;

open F1,"<",$file1 or die;
open O,">",$file_out or die;

while(<F1>){
	chomp;
	my @arr=split;
	my $depth=($arr[4]/$depth1)*1000000;
	print O  "$arr[0]\t$arr[1]\t$arr[2]\t$arr[3]\t",$depth,"\n";
}
