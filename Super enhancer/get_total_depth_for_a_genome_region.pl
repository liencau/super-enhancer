#!/usr/bin/perl
use strict;
my ($file,$bam)=@ARGV;

open F,"<",$file or die;


while(<F>){
	 chomp;
	 my @arr=split;
	 my $start_pos=$arr[1];
	 my $end_pos=$arr[2];
	 my $chr=$arr[0];
	 print $_,"\t";
	 my $command="samtools depth -r $chr:$start_pos-$end_pos $bam";
	 my $result=`$command`;
	 my $depth=0;
	 my @A=split /\n/,$result;
	 for(my $i=0;$i<@A;$i++){
		my @tempArr=split /\s+/,$A[$i];
		$depth+=$tempArr[2]
	 }
	 print $depth ,"\n"; 
}

