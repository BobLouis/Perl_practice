use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

use v5.16;

my $age = 80;
my $is_not_intoxicated = 1;
my $age_last_exam = 16;

if($age < 16){
    say "You can't dirive";
}elsif(!$is_not_intoxicated){
    say "You can't drive";
}else{
    say "You can drive";
}

if(($age >= 1) && ($age < 16)){
    say "You can't dirve"
}elsif(!$is_not_intoxicated){
    say "You can't drive";
}elsif(($age >= 80) && (($age > 100) || ($age - $age_last_exam)> 5) ){
    say "You can't drive";
}else{
    say "You can drive";
}
