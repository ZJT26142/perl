#!/usr/bin/perl
# hashref.pl by Bill Weinman <http://bw.org/contact/>

use 5.18.0;
use warnings;

my $ref = {
    one => 'uno',
    two => 'dos',
    three => 'tres',
    four => 'quatro',
    five => 'cinco'
}; # anonymous hash

$ref->{one} = 1;

foreach my $k ( sort keys %{$ref}) {
    say "$k : $ref->{$k}";# say "$k : ${$ref}{$k}";
}
