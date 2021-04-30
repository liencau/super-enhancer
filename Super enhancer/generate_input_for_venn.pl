#!/usr/bin/perl -w
use strict;
my ($num1,$num2,$com,$out1,$out2)=@ARGV;

open OUT1,"+>$out1" or die;
open OUT2,"+>$out2" or die;
for(my $i=1;$i<=$com;$i++){
	print OUT1 "$i\n";
	print OUT2 "$i\n";
}
for(my $i=$com+1;$i<=$num1;$i++){
	print OUT1 "$i\n";
}
close OUT1;
my $max2=$num2-$com+$num1;
for(my $i=$num1+1;$i<=$max2;$i++){
	print OUT2 "$i\n";
}
close OUT2;
