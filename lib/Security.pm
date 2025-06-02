package Security;

use strict;
use warnings;
use lib '.';
use Digest::SHA qw(sha256_hex);
use Crypt::Argon2;

sub hash_password {
    my($password) = @_;
    return sha256_hex($password);
}


sub salt_password {
    my($hashed_password) = @_;
    my $salt = join '', map { chr(int(rand(256))) } 1 .. 16;




}

$spassword = $Argon2->hash_encoded


1;