use strict;
use warnings;
use utf8;
use Acme::MadokaMagica;
use Test::More;


subtest 'Team' => sub {

    subtest 'Alone' => sub {
        my ($mami) = Acme::MadokaMagica->alone_members;

        is ref $mami,'Acme::MadokaMagica::TvMembers::TomoeMami';
    };
};

done_testing;
