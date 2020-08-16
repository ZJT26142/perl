#!/usr/bin/perl
# mixed.pl by Bill Weinman <http://bw.org/contact/>

use 5.18.0;
use warnings;

my $musicians = [
    { name => 'Jimi Hendrix', instrument => 'Guitar', genre => 'Rock' },
    { name => 'Miles Davis', instrument => 'Trumpet', genre => 'Jazz' },
    { name => 'Yo-Yo Ma', instrument => 'Cello', genre => 'Classical' },
    { name => 'Frank Zappa', instrument => 'Guitar', genre => 'Fusion' }
]; # a ref to an anonymous array with anonymous hashes in each element of the array

push @{$musicians}, { name => 'Elton John', instrument => [ 'Piano', 'Vocal' ], genre => 'Rock' };
foreach my $m ( @{$musicians} ) {
    my $inst = ref($m->{instrument}) eq 'ARRAY' ? join('/', @{$m->{instrument}}) : $m->{instrument};
    say "$m->{name}: $inst, $m->{genre}";#say "$m->{name}: $m->{instrument}, $m->{genre}";
}
