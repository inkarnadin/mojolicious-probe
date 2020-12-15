package Core;
use Mojo::Base 'Mojolicious', -signatures, -strict;

use Core::Model::Auth;

sub startup($self) {
  $self -> secrets(['Just probe']);
  $self -> helper(auth => sub { state $auth = Core::Model::Auth -> new });

  my $routes = $self -> routes;
  $routes -> any('/') -> to('login#index') -> name('index');

  my $logged_in = $routes -> under('/') -> to('login#logged_in');
  $logged_in -> get('/protected') -> to('login#protected');
  $routes -> get('/logout') -> to('login#logout');
}

1;
