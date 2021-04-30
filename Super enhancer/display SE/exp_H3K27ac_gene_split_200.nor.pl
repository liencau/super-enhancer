#!/usr/bin/perl -w
use strict;
die "\n",usage(),"\n" unless @ARGV==4;
my ($depth,$region,$unit_num,$out)=@ARGV;
open R,"$region" or die;
my %hash;
while(my $line=<R>){
    chomp $line;
    my ($chrom,$stt,$end)=(split/\s+/,$line)[0,1,2];
    if($chrom=~/[0-9]/){
      foreach(my $i=$stt-2000;$i<=$end+2000;$i++){
         $hash{"$chrom\t$i"}=0;
      }
    }
}
close R;

open F,"$depth" or die "$!";
while(<F>) {
chomp;
  my ($chr,$pos,$value)=split/\s+/,$_;
    if(exists $hash{"$chr\t$pos"}){
    	$hash{"$chr\t$pos"}=$value;
    }else{
	next;	
    }
}
close F;

open OUT,"+>$out" or die;
open I,"$region" or die "$!";
my %meth_forw;
while(my $line=<I>){
    chomp $line;
    my ($chrom,$stt,$end)=(split/\s+/,$line)[0,1,2];
      foreach(my $i=$stt-2000;$i<=$end+2000;$i++){
         if(exists $hash{"$chrom\t$i"}){
           &cal($stt,$end,$i,$hash{"$chrom\t$i"});
         }
      }
}

foreach (keys %meth_forw) {
  my $methlev=$meth_forw{$_};
    print OUT "$_\t$methlev\n";
}

sub cal{
    my ($stt,$end,$pos1,$num)=@_;
    my $unit=($end-$stt)/$unit_num;
    my $keys=0;
        if($pos1<$stt){
            $keys=int(($pos1-$stt)/100);
            $keys="-1\t$keys";
		$meth_forw{$keys}+=$num/100;
        }elsif($pos1>=$stt && $pos1<$end){
            $keys=int (($pos1-$stt)/$unit);
            $keys="0\t$keys";
		$meth_forw{$keys}+=$num/$unit;
        }else{
            $keys=int(($pos1-$end)/100);
            $keys="1\t$keys";
		$meth_forw{$keys}+=$num/100;
        }
}
sub usage{
    my $die=<<DIE;
    perl *.pl <pileup> <gene_bed> <output>
    This is to get the methylation distribution throughth gene
DIE
}
