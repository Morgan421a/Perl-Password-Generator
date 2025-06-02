package User;

use strict;
use warnings;
use lib '.';
use Scalar::Util qw(looks_like_number);

use Passkeys qw(@alphabet @nums @symbols);


sub get_length_input {
    while (1) {
        print "How long would you like the password to be? Minimum 10 characters, Maximum 20: ";
        my $pwlength = <STDIN>;
        chomp($pwlength);

        if (looks_like_number($pwlength) && $pwlength == int($pwlength) && $pwlength >= 10 && $pwlength <= 20) {
            return $pwlength;
        } else {
            print "Invalid length, please choose a value between 10 and 20 (inclusive) \n"
        }
    }
}

sub generator {
    my ($target_length) = @_;
    my @sources = (\@alphabet, \@nums, \@symbols);
    my $password = '';

    for (1 .. $target_length) {
       
        my $source = $sources[int(rand(@sources))];

        
        my $char = $source->[int(rand(@$source))];

        
        $password .= $char if defined $char;
    }

    return $password;
}



1;



