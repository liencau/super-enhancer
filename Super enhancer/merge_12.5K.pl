#!/usr/bin/perl -w
use strict;
my ($dmr,$out)=@ARGV;
die usage() unless @ARGV==2;
open DMR,"sort -k1,1 -k2,2n $dmr |" or die "$!";
open OUT,"+>$out" or die "$!";
my $n=1;
while(my $line=<DMR>){
    my ($chr1,$stt1,$end1)=(split(/\s+/,$line))[0,1,2];
    PATH:{
        $line=<DMR>;
        if(!$line){
            print OUT "$chr1\t$stt1\t$end1\t0\n";
        }else{
            my ($chr2,$stt2,$end2,$lev1,$lev2)=(split(/\s+/,$line))[0,1,2];

            if($chr2 eq $chr1 && $stt2-$end1<=12500){
                $end1=$end2;
                $n++;
                redo PATH;
            }else{
                print OUT "$chr1\t$stt1\t$end1\t$n\n";
                ($chr1,$stt1,$end1)=($chr2,$stt2,$end2);
                $n=1;
                redo PATH;
           }
        }
    }
}

sub usage{
    my $die=<<DIE;
    perl *.pl <DMR candidate> <OUT>
DIE
}

