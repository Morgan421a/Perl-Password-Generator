package Passkeys;

use strict;
use warnings;
use Exporter 'import';

our @EXPORT_OK = qw(@alphabet @nums @symbols);

our @alphabet = ('a' .. 'z');
our @nums     = (0 .. 9);
our @symbols  = ('!', '£', '$', '%', '&', '*', '-', '_', '=', '+', '@','<', '>', '?');

1;