#!/usr/bin/perl -w
use strict;
my ($in,$binsize,$out)=@ARGV;
open IN,"$in" or die;
open OUT,"+>$out" or die;
my $num=0;
PATH:{
	$num=0;
	my $pos_com=0;
	my $depth_com=0;
	while(<IN>){
		chomp;
		$num++;
		if($num%$binsize!=0){
			my @ss=split;
			$pos_com+=$ss[1];
			$depth_com+=$ss[2];
		}else{
			my @ss=split;
                        $pos_com+=$ss[1];
                        $depth_com+=$ss[2];
			my $pos=int($pos_com/$binsize);
			my $depth=int($depth_com/$binsize);
			print "$_\n";
			print OUT "$ss[0]\t$pos\t$depth\n";
			redo PATH;
		}
	}
}
close IN;
close OUT;
