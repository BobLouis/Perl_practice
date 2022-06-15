use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

use v5.16;

my $i = 1;

while($i < 10){
    if($i % 2 == 0){
        $i++;
        next; #continue
    }
    if($i == 7){last;} #break}
    say $i;
    $i++;
}

my $lucky_num = 7;

my $guess;

do{
    say "Guess a numbrt between 1 and 10: ";
    $guess = <STDIN>;
}while $guess != $lucky_num;

say "You get the answer";

my $age_old = 18;

given($age_old){ #switch
    when($_ >16){
        say "Drive";
        continue;#continue check for the next condition
    }
    when($_ > 17){say "vote";}
    default {say "Nothing Special";}
}