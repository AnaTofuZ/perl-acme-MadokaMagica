use strict;
use warnings;

use Acme::MadokaMagica;
use Acme::MadokaMagica::TvMembers;
use Acme::MadokaMagica::TvMembers::TomoeMami;
use Acme::MadokaMagica::TvMembers::KanameMadoka;
use Acme::MadokaMagica::TvMembers::MikiSayaka;

use Test::More;
use utf8;

subtest 'Charactors' => sub {
    subtest 'Mami' => sub {
        my $mami = Acme::MadokaMagica::TvMembers::TomoeMami->new;
        ok ! $mami->has_qb;
        is $mami->name,          '巴 マミ';
        is $mami->firstname,     'マミ';
        is $mami->lastname,      '巴';
        is $mami->age,            15;
        is $mami->birthday,      '8/28';
        is $mami->blood_type,    'O';
        is $mami->cv,            '水橋かおり';
        is $mami->say,            'ティロ・フィナーレ!!';
        is $mami->color,          'yellow';
        ok $mami->qb;
        is $mami->name,          'Candeloro';
        is $mami->color,          'black';
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
        ok $madoka->qb;
        is $madoka->name,          'Kriemhild_Gretchen';
        is $madoka->color,          'black';
    };

    subtest 'Sayaka' => sub {
        my $sayaka = Acme::MadokaMagica::TvMembers::MikiSayaka->new;
        is $sayaka->name,          '美樹 さやか';
        is $sayaka->firstname,     'さやか';
        is $sayaka->lastname,      '美樹';
        is $sayaka->age,            14;
        is $sayaka->birthday,      '8/16';
        is $sayaka->blood_type,    'A';
        is $sayaka->cv,            '喜多村英梨';
        is $sayaka->say,            'あたしってほんとバカ';
        is $sayaka->color,          'Blue';
        ok $sayaka->qb;
        is $sayaka->name,          'Oktavia_Von_Seckendorff';
        is $sayaka->color,          'black';
    };
};

done_testing;

