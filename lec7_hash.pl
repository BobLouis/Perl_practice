use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

use v5.16;

my %employees = (
    "Sue"=>35,
    "Paul"=>43,
    "Sam"=>39
);

printf("Sue is %d \n", $employees{Sue});

$employees{Frank} = 44;

while (my ($l,$v) = each %employees) { #$l and $v are the token in the hash
    print "$l $v\n"
}

my @ages = @employees{"Sue", "Sam"};
say @ages;

my @hash_arr = %employees;
say @hash_arr;

delete $employees{"Sam"};

while (my ($l,$v) = each %employees) { 
    print "$l $v\n"
}

say ((exists $employees{'Sam'})? "Sam is here" : "No Sam");

for my $key (keys %employees) {
    if($employees{$key} == 35){
        say "Hi Sue";
    }
}







