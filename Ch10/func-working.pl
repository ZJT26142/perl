#!/usr/bin/perl
# func.pl by Bill Weinman <http://bw.org/contact/>

use 5.18.0;
use warnings;
use feature 'state';

use subs qw( func ); #pragma takes a list of the name of the functions ; use subs ('func')

my @array = qw( one two three four five );
func 'foo', 'bar', 'baz';
func0('Fred');
func1('Fred');
func2('Fred', 'Barney', 'Wilma', 'Betty', @array);
say foreach func3();
func4();

sub func {
    say foreach @_;
}

sub func0 {
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

sub func3 {
    return ( 1, 2, 3, 4, 5 );
}

sub func4 {
    state $n = 10; #static var
    say ++$n;
}