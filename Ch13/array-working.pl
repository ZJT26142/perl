#!/usr/bin/perl
# array.pl by Bill Weinman <http://bw.org/contact/>

use 5.18.0;
use warnings;

my @a = qw( one two three four five );
say foreach grep !/t/, @a;

my $string = "This is a string with lots of words";
@a = split /\s+/, $string; 
say join ':', @a;
say foreach reverse @a;


@a = (1, 2, 3, 4, 5);
say foreach map { $_ * 7 } @a;
