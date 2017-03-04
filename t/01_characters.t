use strict;
use warnings;
use Acme::MadokaMagica;
use Acme::MadokaMagica::TvMembers;
use Acme::MadokaMagica::TvMembers::TomoeMami;

use Test::More;
use utf8;

subtest 'Charactors' => sub {
    subtest 'Mami' => sub {
        my $mami = Acme::MadokaMagica::TvMembers::TomoeMami->new;
        is $mami->name,          '巴 マミ';
        is $mami->firstname,     'マミ';
        is $mami->lastname,      '巴';
        is $mami->age,            15;
        is $mami->birthday,      '8/28';
        is $mami->blood_type,    'O';
        is $mami->cv,            '水橋かおり';
        is $mami->say,            'ティロ・フィナーレ!!';
        is $mami->color,          'yellow';
    };
};

done_testing;

