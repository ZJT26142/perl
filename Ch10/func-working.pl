#!/usr/bin/perl
# func.pl by Bill Weinman <http://bw.org/contact/>

use 5.18.0;
use warnings;


my @array = qw( one two three four five );
func('Fred');
func1('Fred');
func2('Fred', 'Barney', 'Wilma', 'Betty', @array);

sub func {
    my @name = shift;
    say @name;
    say 'Say hello to '.$name[0];
}

sub func1 {
    my $name = shift;
    say "Say hello to $name";
}

sub func2 {
    say foreach @_;
}