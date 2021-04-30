#!/usr/bin/perl
use strict;

my($file,$file_out)=@ARGV;

open F ,"<",$file or die;
open O ,">",$file_out or die;
my $num=0;
my $max_signal=0;
while(<F>){
	chomp;
	my @arr=split;
	if($arr[4]>0){
		$num++;
		if($arr[4]>$max_signal){
			$max_signal=$arr[4];
		}
	}
}
close F;
open F ,"<",$file or die;
my $area;	
my $sig=0;		#last signal
my $count=0;
my $flag=0;
my $string;
my $seq;
while(<F>){
	chomp;
	$count++;
        my @arr=split;
        if($arr[4]>0){
		
		if($arr[4]*$num-$sig*$num>$max_signal && $flag==0){
			print "$count\n";
			$string.="$_\n";
			$flag=1;
			$seq=0;
		}
		elsif($arr[4]*$num-$sig*$num> $max_signal && $flag==1){
			$string.="$_\n";
			$flag=1;
			$seq=0;
		}
		else{
			if($seq<6){
				$seq++;
				$string.="$_\n";
				$flag=1;
			}
			else{
				$string="";
				$flag=0;
			}	
		}
		$sig=$arr[4];
	}
	
}
print O "$string";		
print "$file\t$num\n";		
