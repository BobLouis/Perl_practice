use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

use v5.16;

sub get_random {
    return int(rand 11);
}

say "Random number", get_random();

sub get_random_max {
    my ($max_num) = @_;

    $max_num ||= 11; #default value
    return int(rand $max_num);
}

say "Random Number ", get_random_max(1000);

sub get_sum {
    my ($num1, $num2) = @_; #input value

    $num1 ||= 1; #default value
    $num2 ||= 2;
    return $num1 + $num2;
}

sub sum_many {
    my $sum = 0;
    foreach my $val (@_){
        $sum += $val;
    }
    return $sum;
}

say "Sum: ", sum_many(1,2,3,4,5,6,7,8,9,10);

sub increment {
    state $execute_total = 0;
    $execute_total ++;
    say "Execute_total: ", $execute_total, "times";
}

increment();
increment();

sub double_array{

    my @num_array = @_;
    $_ *= 2 for @num_array;
    return @num_array;
}


my @arr = (1,2,3,4,5);

print join(", ", double_array(@arr)),"\n";

sub get_mul{
    my ($rand_num) = @_;
    $rand_num ||= 1;
    return $rand_num *2 , $rand_num*3;
}

my ($dbl_num, $tri_num) = get_mul(3);
say "$dbl_num $tri_num";

sub fac {
    my ($num) = @_;
    if ($num <= 0){
        return 0;
    }elsif($num == 1){
        return 1;
    }else{
        return $num *fac($num-1);
    }
    # return 0 if $num == 0;
    # return 1 if $num == 1;
    # return $num * fac($num-1);
}

say "factorial 4 =", fac(10); 










