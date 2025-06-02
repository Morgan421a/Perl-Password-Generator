#!/usr/bin/perl
use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/lib";

use User;
use Security;

print "What application is this password for? ";
my $application = <STDIN>;
chomp($application);

my $length = User::get_length_input();
my $password = User::generator($length);

print "Generated password for $application: $password\n";

my $hashed_password = Security::hash_password($password);
print "Hashed password: $hashed_password\n";


