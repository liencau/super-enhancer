#!/usr/bin/perl
print "a";
use strict;
my ($file,$lim)=@ARGV;
open F,"<",$file or die;
my $num=0;
my $total=0;
while(<F>){
	chomp;
	my @arr=split;
	if($arr[5]>0){
		$num++;
		$total+=$arr[5];
	}
}
close F;

my $count=0;
open F ,"<",$file or die;
my $sum=0;
while(<F>){
        chomp;
	$count++;
        my @arr=split;
        if($arr[5]>0){
                
                $sum+=$arr[5];
		if($count>=$lim){
			last;
		}
	}
}
my $pro=$sum/$total;
print $file,"\t",$num,"\t",$count,"\t",$pro,"\n";
