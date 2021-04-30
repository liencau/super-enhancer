#!/usr/bin/perl
#
use strict;
my ($file1,$file2,$file_out,$depth1,$depth2)=@ARGV;

open F1,"<",$file1 or die;
open F2,"<",$file2 or die;
open O,">",$file_out or die;
my %hash;
while(<F2>){
	chomp;
	my @arr=split;
	$hash{"$arr[0]\t$arr[1]\t$arr[2]"}=$arr[4];

}

while(<F1>){
	chomp;
	my @arr=split;
	my $depth=($arr[4]/$depth1-($hash{"$arr[0]\t$arr[1]\t$arr[2]"})/$depth2)*1000000;
	print O  "$arr[0]\t$arr[1]\t$arr[2]\t$arr[3]\t",$depth,"\n";
}
