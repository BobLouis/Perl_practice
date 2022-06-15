use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

use v5.16;

my $file = 'employee.txt';

open my $fh, '<', $file or die "can't open File : $_"; #read from file

while(my $info = <$fh>){
    chomp($info);

    my ($emp_name, $job, $id) = split /:/, $info;

    print "$emp_name is a $job and has the id $id \n";
}

close $fh or die "can't close File : $_";



open $fh, '>>', $emp







