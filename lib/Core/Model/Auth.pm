package Core::Model::Auth;

use strict;
use warnings;
use experimental qw/signatures/;

use Mojo::Util qw/secure_compare/;

my $USERS = {
  admin => '123',
  user1 => '123'
};

sub new { bless {}, shift }
sub check ($self, $user, $pass) {
  return 1 if $USERS -> { $user } && secure_compare $USERS -> { $user }, $pass;
  return undef;
}

1;
