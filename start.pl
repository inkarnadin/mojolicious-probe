#!/usr/bin/perl
use strict;
use warnings;
use Mojo::Base -strict;
use lib qw/lib/;
use Mojolicious::Commands;

Mojolicious::Commands -> start_app('Core');
