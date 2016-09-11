#!/usr/bin/perl

use strict;
use Term::ReadKey;

my ($TRUE, $FALSE) = (1 == 1, 1 == 0);
my %keys = (
	10 => "Newline",
	32 => "Space",
	65 => "Up",
	66 => "Down",
	67 => "Right",
	68 => "Left",
	113 => "Q",
);
my %ignore = (
	27 => "ArrowA",
	91 => "ArrowB",
);

my @level;
my ($sizeX,$sizeY,$sizeZ);
my $dir;
my ($posX,$posY,$posZ);
my ($BRICK, $BLOCK, $EXIT, $COIN, $DIAMOND) = ('X','B','O','C','$');

sub getKey {
	ReadMode 4;
	while ($playing == $TRUE) {
		my ($key, $keyCode, $gotKey);
		$gotKey = $FALSE;
		while ($gotKey != $TRUE) {
			while (not defined ($key = ReadKey(-1))) { }
			my $keyCode = ord($key);
			if (exists $keys{$keyCode}) {
				$gotKey = $TRUE;
			}
		}
		ReadMode 0;
	}
	return $keyCode;
}

my $playing = $TRUE;

