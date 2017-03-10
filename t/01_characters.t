use strict;
use warnings;

use Acme::MadokaMagica;
use Acme::MadokaMagica::TvMembers;
use Acme::MadokaMagica::TvMembers::TomoeMami;
use Acme::MadokaMagica::TvMembers::KanameMadoka;

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

    subtest 'Madoka' => sub {
        my $madoka = Acme::MadokaMagica::TvMembers::KanameMadoka->new;
        is $madoka->name,          '鹿目 まどか';
        is $madoka->firstname,     'まどか';
        is $madoka->lastname,      '鹿目';
        is $madoka->age,            14;
        is $madoka->birthday,      '10/3';
        is $madoka->blood_type,    'A';
        is $madoka->cv,            '悠木碧';
        is $madoka->say,            'ウェヒヒww';
        is $madoka->color,          'Pink';
    };
};

done_testing;

