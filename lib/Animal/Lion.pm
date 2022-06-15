package Animal::Lion;

use Animal::Cat;
use strict;

our @ISA = qw(Animal::Cat);#inherit from cat

sub getSound {
    my ($self) = @_;
    return $self->{name}, " says Roarrr";
}

1;