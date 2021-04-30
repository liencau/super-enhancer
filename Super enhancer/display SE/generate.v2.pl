#!/usr/bin/perl
use strict;

my($file,$total,$file_out)=@ARGV;
 
open F,"<",$file or die;
open O,">",$file_out or die;

while(<F>){
	chomp;
	my @arr=split;
	$arr[3]=$arr[3]*2106338117/$total/50;
	print O "$arr[0]\t$arr[1]\t$arr[2]\t$arr[3]\n";
}
