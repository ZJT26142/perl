#!/usr/bin/perl
# ref.pl by Bill Weinman <http://bw.org/contact/>

use 5.18.0;
use warnings;

my $ref1 = [ 1, 2, 3, 4 ];
my $ref2 = { one => 1, two => 2, three => 3, four => 4 };

display_ref($ref1);
display_ref($ref2);

sub display_ref {
    my $r = shift || '';
    if (ref($r) eq 'ARRAY') {
        say foreach @{$r};
    } elsif (ref($r) eq 'HASH') {
        foreach my $k ( sort keys %{$r}) {
            say "$k : $r->{$k}";
        }
    }
}
