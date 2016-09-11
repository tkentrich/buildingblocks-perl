#!/usr/bin/perl

use strict;
use Term::ReadKey;

my ($TRUE, $FALSE) = (1 == 1, 1 == 0);
my ($key, $keyCode);
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

my $gotKey;
my $playing = $TRUE;

while ($playing == $TRUE) {
	ReadMode 4;
	while (not defined ($key = ReadKey(-1))) {
	}
	my $keyCode = ord($key);
	if (exists $keys{$keyCode}) {
		print "Key $keys{$keyCode}\n";
		if ($keys{$keyCode} eq "Q") {
			$playing = $FALSE;
		}
	} else {
		if (!exists $ignore{$keyCode}) {
			print "($keyCode)\n";
		}
	}
	ReadMode 0;
}
