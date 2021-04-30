#!/usr/bin/perl
use strict;

my ($file,$region1,$region2,$file_out)=@ARGV;
my @arr1=split /:/,$region1;
my @arr2=split /:/,$region2;
open F,"<",$file or die;
open O,">",$file_out or die;

while(<F>){
	chomp;
	my @arr=split;
	my $flag1=($arr[0]==$arr1[0] && $arr[1]>=$arr1[1] && $arr[2]<=$arr1[2]) && ($arr[3]==$arr2[0] && $arr[4]>=$arr2[1] && $arr[5]<=$arr2[2]);
	my $flag2=($arr[0]==$arr2[0] && $arr[1]>=$arr2[1] && $arr[2]<=$arr2[2]) && ($arr[3]==$arr1[0] && $arr[4]>=$arr1[1] && $arr[5]<=$arr1[2]);
	if($flag1 || $flag2){
		print O $_, "\n";
	}
}
