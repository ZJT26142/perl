#!/usr/bin/perl
# string.pl by Bill Weinman <http://bw.org/contact/>

use 5.18.0;
use warnings;

my $string = "This string has a bunch of useful characters in it.";

#substr($string, 5, 10, 'foo');
say $string;
say rindex $string, 'in', 10; # not found
say reverse(1, 2, 3, 4, 5);
say lc $string;
say uc $string;
say ucfirst $string;