#!/usr/bin/perl
# filehandle.pl by Bill Weinman <http://bw.org/contact/>

use 5.18.0;
use warnings;

my $filename = 'lines.txt';
my $outfile = 'newfile.txt';

open(my $fh1, "< $filename") or die "Cannot open file: $!";
open(my $fh2, "> $outfile") or die "Cannot open output file: $!";
while ( my $line = <$fh1> ) {
    print $fh2 $line;
}
close $fh1;
close $fh2;

say 'Done.';