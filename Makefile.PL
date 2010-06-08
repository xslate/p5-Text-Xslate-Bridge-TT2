use strict;
use warnings;
use inc::Module::Install;

all_from 'lib/Text/Xslate/Bridge/TT2.pm';

requires 'Text::Xslate' => 0.1029;
requires 'Template'     => 2.0000;
requires 'parent'       => 0.2000;

test_requires 'Test::More' => 0.88; # done_testing()

tests_recursive;
author_tests 'xt';

auto_set_repository() if -d '.git';

clean_files qw(
    Text-Xslate-Bridge-TT2-* *.stackdump
    cover_db
    nytprof
    *.out
);

WriteAll(check_nmake => 0);
