#!/usr/bin/perl
# undef.pl by Bill Weinman <http://bw.org/contact/>

use 5.18.0;
use warnings;

my $x = 42;
undef $x; # $x = undef;

if (defined $x) {
    say "x is $x";
} else {
    say "x is not defined";
}

