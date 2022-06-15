use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

use v5.16;

print "Hello World\n";

my $name = 'Louis';

my ($age,$street) = (21,'123 street');

my $my_info = "$name lives on \"$street\"\n";

# $my_info = qq{$name lives on "$street"\n};

print $my_info;

my $bunch_on_info = <<"END";

This is a 
bunch of information
on multiple lines
END

say $bunch_on_info;

my $big_int = 123456789564;

# %c : character
# %s : string
# %d : decimal
# %u : Unsigned integer
# %f : floating point (Decimal Notation)
# %e : Floating point (Scientific NOtation)

printf("%u \n", $big_int+1);

my $big_float = .1235468798465468765468748468;
printf("%.16f \n", $big_float + .123776767);

my $first = 1;
my $second = 2;

($first, $second) = ($second, $first);

say "$first $second";