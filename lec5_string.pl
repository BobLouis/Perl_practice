use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

use v5.16;

my $long_string = "Random Long String";
say "Length if string", length($long_string);
printf("Long is at %d \n",index($long_string,"Long"));

printf("Last g is at %d \n", rindex($long_string,"g"));
$long_string = $long_string . ' isn\'t that long';#concatanation
say "Index 7 through 10", substr($long_string,7,4);

my $animal = "animal";
printf("Last character is %s\n", chop($animal));


my $no_newline = "No new line\n";
say $no_newline;
chomp $no_newline;#cut the last char
say $no_newline;

printf("Uppercase : %s \n", uc($long_string));
printf("Lowercase : %s \n", lc($long_string));
printf("1st uppercase : %s \n", ucfirst($long_string));

$long_string =~ s/ /, /g;#replace " " with ", "
say $long_string;

my $two_times = "What I said is " x 2;
say $two_times;

my @abcs = ('a' .. 'z');# @ => array
print join(", ", @abcs), "\n";

my $letter = 'c';
say "Next Letter ", ++$letter;