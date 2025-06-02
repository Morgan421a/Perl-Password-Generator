package Password;

use strict;
use warnings;
use diagnostics;

use Moose;

has 'application' => (
    is => 'ro',
    isa => 'Str',
);

has 'length' => (
    is => 'ro',
    isa => subtype( #subtype allows for the creation of restraints on existing types
        'Int',
        where => sub { $_ > 10 && $_ < 21 },
        message => sub { "length must be > 10 and < 20, got $_"},
    ),
);

has 'hash' => (
    is => 'ro',
    isa => 'Str',
);

has 'username' => (
    is => 'rw',
    isa => 'Str'
);

1;



