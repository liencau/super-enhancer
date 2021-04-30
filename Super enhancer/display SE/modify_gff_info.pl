#!/usr/bin/perl
use strict;

my($file,$file_out)=@ARGV;

open F,"<",$file or die;
open O,">",$file_out or die;

my $flag="false";
my %hash;
while(<F>){
        chomp;
        if(/Parent=transcript:(.+_T.*?);N/){
       		 my $trans=$1;
		 my @arr=split;
		 $hash{$trans}+=($arr[4]-$arr[3]);
	}
        if(/exon/){
                $flag="true";
        }
}

my %hash2;
my %hash3;
foreach my $key (%hash){
	my @arr=split /_/,$key;
	if($hash2{$arr[0]} < $hash{$key}){
		$hash2{$arr[0]}=$hash{$key};
		$hash3{$arr[0]}=$key;
	}
}
close F;



open F,"<",$file or die;
my $line;
chomp($line=<F>);
my @arr1=split /\s+/,$line;

        print O $line,"\t","$arr1[0]:$arr1[1]-$arr1[2]","\t",".","\t","1","\t","enhancer","\n";
        while(<F>){
                if(/Parent=transcript:(.+_T.*?);N/){
                        my $trans=$1;
			my @arr1=split /_/,$trans;
                        my @arr=split;
			if($hash3{$arr1[0]} eq $trans){
                       		 if($arr[6] eq "+"){
                               		 $arr[6]=1;
                       		 }
                       		 else{
                                	$arr[6]=-1;
                       		 }

                      		  if($arr[2] =~ /exon/){
                                	 print O $arr[0],"\t",$arr[3],"\t",$arr[4],"\t",$arr1[0],"\t",".","\t",$arr[6],"\t","exon","\n";
                       		  }
                      		  if($arr[2]=~ /UTR/){
                                	 print O  $arr[0],"\t",$arr[3],"\t",$arr[4],"\t",$arr1[0],"\t",".","\t",$arr[6],"\t","UTR","\n";
         	                  }

                	}
		}
        }


