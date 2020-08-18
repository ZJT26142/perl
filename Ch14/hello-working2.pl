#!/usr/bin/perl
# hello.pl by Bill Weinman <http://bw.org/contact/>

use 5.18.0;
use warnings;
use BW::Better;

my $o = BW::Better->new(47);
my $x = $o->number;
say "The value is $x";
say "A better number is " . $o->better;

$o->number(183);
$x = $o->number;
say "The value is $x";