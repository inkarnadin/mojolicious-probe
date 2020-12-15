package Model::Status;

use strict;
use warnings;

use Perl::Version qw/version/;

sub check_status {
  my $version = version -> new('1.0');
  { status => 'OK', version => $version };
}

1;
