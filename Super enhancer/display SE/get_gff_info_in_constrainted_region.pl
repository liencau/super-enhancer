#!/usr/bin/perl
use strict;

my ($file,$region,$file_out)=@ARGV;

my @arr1=split /:/,$region;
open F,"<",$file or die;
open O,">",$file_out or die;
print O "$arr1[0]\t$arr1[1]\t$arr1[2]\n";
while(<F>){
	chomp;
	if(/gramene/){
		my @arr=split;
		if($arr[0]==$arr1[0] && $arr[3]>=$arr1[1] && $arr[4]<=$arr1[2]){
			print O $_,"\n";
		}
	}
}

