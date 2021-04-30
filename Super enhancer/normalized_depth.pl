#!/usr/bin/perl -w
use strict;

my($t,$c,$tn,$cn,$chr,$out)=@ARGV;
open A,"cat $t $c|" or die;
my %hash;
while(<A>){
	chomp;
	my @ss=split;
	if($ss[0]==$chr){
		$hash{"$ss[0]\t$ss[1]"}=0;
	}
}
close A;
open T,"$t" or die;
my %hash_t;
while(<T>){
	chomp;
        my @ss=split;
        if($ss[0]==$chr){
                $hash_t{"$ss[0]\t$ss[1]"}=$ss[2];
        }
}
close T;

open C,"$c" or die;
my %hash_c;
while(<C>){
        chomp;
        my @ss=split;
        if($ss[0]==$chr){
                $hash_c{"$ss[0]\t$ss[1]"}=$ss[2];
        }
}
close C;
open OUT,"+>$out" or die;
foreach my $key(keys %hash){
	if(!(exists $hash_t{$key})){
		$hash_t{$key}=0;
	}
	if(!(exists $hash_c{$key})){
                $hash_c{$key}=0;
        }
	if(exists $hash_t{$key} && exists $hash_c{$key}){
		my $nor_depth=$hash_t{$key}/$tn-$hash_c{$key}/$cn;
		print OUT "$key\t$nor_depth\t$hash_t{$key}\t$hash_c{$key}\n";
	}	
}
close OUT;
