#!/usr/bin/perl
# arrayref.pl by Bill Weinman <http://bw.org/contact/>

use 5.18.0;
use warnings;

my @array = qw( one two three four five );
my $ref = [ qw( one two three four five ) ]; #anonymous array
say foreach @{$ref};

my $ref1 = [ 1, 2, 3 ];
$ref1->[0] = 'one'; # ${$ref1}[0] = 'one';
say foreach @{$ref1};