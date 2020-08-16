#!/usr/bin/perl
# funcref.pl by Bill Weinman <http://bw.org/contact/>

use 5.18.0;
use warnings;

my $ref = \&func; # & indicates a function
$ref->(); # &{$ref}();

sub func {
    say "This is the excellent function.";
}

my $ref1 = sub { say "Hi! I'm an anonymous function!" };
$ref1->();


my $ref2 = func1();
$ref2->();
sub func1 {
    my $s = "This string is local to func.";
    return sub { say $s };
}