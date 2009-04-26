#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'Acme::Pythonic::Functions' );
}

diag( "Testing Acme::Pythonic::Functions $Acme::Pythonic::Functions::VERSION, Perl $], $^X" );
