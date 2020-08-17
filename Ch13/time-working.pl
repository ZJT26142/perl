#!/usr/bin/perl
# time.pl by Bill Weinman <http://bw.org/contact/>

use 5.18.0;
use warnings;

my $t = time();
$t += 60 * 60 * 24 * 365 * 4 + ( 60 * 60 * 24 );
say $t;

my $timestring = localtime($t);
say $timestring;

my ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime($t);
$mon ++;
$year += 1900; # Unix

# add leading zeros to numerics for display
foreach ($mon, $mday, $hour, $min, $sec) {
    $_ = "0$_" if $_ < 10;
}
say "$year-$mon-$mday $hour:$min:$sec"; # standard SQL format

use POSIX qw( strftime );
my $now_string = strftime("%A, %B %d, %Y, %H:%M:%S", gmtime($t)); # ISO 
say $now_string;
