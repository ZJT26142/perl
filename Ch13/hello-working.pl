#!/usr/bin/perl
# hello.pl by Bill Weinman <http://bw.org/contact/>

use 5.18.0;
use warnings;
use subs qw( errorexit );

my @a = (1, 2, 3);
my %h = ( one => 1, two => 2, three => 3);
say join ', ', @a, %h;

say STDERR 'Hello, World!';

my $condition = 0;

if ($condition){
    say 'Condition is true.';
} else {
    errorexit "Condition is false.\n";
}

print 'After the conditional.';

sub errorexit {
    my $m = shift || 'Error message goes here.';
    say STDERR "I've got a bad feeling about this: $m";
    exit;
}