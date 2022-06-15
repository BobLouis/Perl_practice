use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

use v5.16;

my @primes = (2,3,5,7,11,13,17);
my @my_info = ("Bob", "123 Main st", 21, 13.5);

$my_info[4] = "Louis";

for my $info (@my_info){
    say $info;
}

foreach my $num (@primes){
    say $num;
}

for(@my_info){
    say $_;
}
say @my_info;

my @my_name = @my_info[0,4];
say @my_name;

my $items = scalar @my_info;

say $items;

my ($first_name, $address, $age, $how_long, $last_name) = @my_info;

say "$first_name $last_name";

say "Popped value ", pop(@primes);

say @primes;

say "Pushed Value ", push(@primes,17);

say "First Item ", shift(@primes);#pop first
say @primes;

say "Unshift Item ", unshift(@primes,1);#push first
say @primes;

print join(", 0",@primes), "\n";

say "Remove Index 0~2 ", splice(@primes, 0, 3);#remove the 0 1 2 elements
print join(", ", @primes), "\n";

print join(" ", ('list', 'of', 'words', "\n"));

my $customers = "Sue Sally Paul";
my @cust_array = split(/ /, $customers);
print join(", ", @cust_array);
print "\n";
@cust_array = reverse(@cust_array);
print join(", ",@cust_array);
@cust_array = reverse sort @cust_array;
print "\n";
print join(", ",@cust_array);

my @number_array = (1,2,3,4,5,6,7,8);

my @odds_array = grep {$_ % 2} @number_array;

print join(", ", @odds_array), "\n";

my @dbl_array = map {$_ * 2} @number_array;
print join(", ", @dbl_array), "\n";