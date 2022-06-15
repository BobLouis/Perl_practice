use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

use v5.16;

say "5 + 4 = " , 5 + 4;
say "5 - 4 = " , 5 - 4;
say "5 * 4 = " , 5 * 4;
say "5 / 4 = " , 5 / 4;
say "5 % 4 = " , 5 % 4;
say "5 ** 4 = " , 5 ** 4;

say "EXP 1 = ", exp(1);
say "HEX 10 = ", hex(10);
say "OCT 10 = ", oct(10);
say "INT 6.45 = ", int(6.45);
say "LOG 2 = ", log(2);
say "Random betweem 0 - 10 = ", int(rand(11));
say "SQRT 9 = ", sqrt(9);

my $rand_num = 5;
$rand_num += 1;
say "rand_num increment", $rand_num;

say "rand++ = ", $rand_num++;
say "++rand = ", ++$rand_num;
say "rand-- = ", $rand_num--;
say "--rand = ", --$rand_num;

say "3 + 2 * 5 = ",3 + 2 * 5;
say "(3 + 2) * 5 = ", (3 + 2) * 5;