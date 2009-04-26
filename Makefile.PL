use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Acme::Pythonic::Functions',
    AUTHOR              => 'Hauke Lubenow <hlubenow2@gmx.net>',
    VERSION_FROM        => 'lib/Acme/Pythonic/Functions.pm',
    ABSTRACT_FROM       => 'lib/Acme/Pythonic/Functions.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Acme-Pythonic-Functions-*' },
);
