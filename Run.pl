#!/usr/bin/perl

use strict;
use Term::ReadKey;

my ($TRUE, $FALSE) = (1 == 1, 1 == 0);
my @level;
my $key;
my $gotKey;
my $playing = $TRUE;

while ($playing == $TRUE) {
	ReadMode 4;
	while (not defined ($key = ReadKey(-1))) {
	}
	$key = ord($key);
	print "Get key $key\n";
	ReadMode 0;
}
