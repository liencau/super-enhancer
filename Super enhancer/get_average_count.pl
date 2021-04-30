#!/usr/bin/perl
use strict;

my ($file)=@ARGV;

open F ,"<",$file or die;
my $num;
my $sum;
while(<F>){
	chomp;
	$num++;
	my @arr=split;
	$sum+=$arr[3];
}
my $ave=$sum/$num;
print "$file\t$num\t$ave\n";
