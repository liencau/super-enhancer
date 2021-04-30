#!/usr/bin/perl
use strict;

my($file,$total,$file_out)=@ARGV;
 
open F,"<",$file or die;
open O,">",$file_out or die;

while(<F>){
	chomp;
	my @arr=split;
	$arr[2]=$arr[2]*1000000/$total;
	print O "$arr[0]\t$arr[1]\t$arr[1]\t$arr[2]\n";
}
