#!/usr/bin/perl
use strict;

my($file,$file_out)=@ARGV;

open F,"<",$file or die;
open O,">",$file_out or die;

        my $enhance;
        my $enhance_start;
        my $enhanc_end;
        my $chr=-1;
        my $count;

while(<F>){
		chomp;
		my @ARR=split /\s+/,$_;
		if ($ARR[1]-$enhanc_end <12500 && $ARR[0] == $chr){
			$enhanc_end=$ARR[2];
			$count++;
			
			next;
		}
		else{	
			print O "$chr\t$enhance_start\t$enhanc_end\t$count\n";
	             	$enhance_start=$ARR[1];
			$enhanc_end=$ARR[2];
			$chr=$ARR[0];
			$count=1;
			
			next;
		}
}
print O "$chr\t$enhance_start\t$enhanc_end\t$count\n";
