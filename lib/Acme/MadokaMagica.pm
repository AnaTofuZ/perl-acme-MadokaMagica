package Acme::MadokaMagica;
use 5.008001;
use strict;
use warnings;

our $VERSION = "0.01";

use Readonly;

Readonly our $KyoSaya => [
    "SakuraKyoko",
    "MikiSayaka",
];

Readonly our $MadoHomu => [
    "KanameMadoka",
    "AkemiHomura",
];

Readonly our $Alone => [
    "TomoeMami",
];

Readonly our $HollyQuintet => [
    @$MadoHomu,
    @$Alone,
    @$KyoSaya,
];

Readonly our $MainMembers => [
    @$HollyQuintet,
];

sub alone_members{
    my $self = shift;
    my $line = (caller)[2];
    return $self->members_of($Alone,$line);
}

sub main_members {
    my $self = shift;
    my $line = (caller)[2];
    return $self->members_of($MainMembers,$line);
}

sub members_of {

    my ($self,$team,$line) = @_;
    my @members;

    for my $member_name (@{ $team }){

        my $pkg = "Acme::MadokaMagica::TvMembers::$member_name";
        if (eval "require $pkg;1;"){
            push @members,$pkg->new($line);
        }
    }

    return @members;
}

1;
__END__

=encoding utf-8

=head1 NAME

Acme::MadokaMagica - It's new $module

=head1 SYNOPSIS

    use Acme::MadokaMagica;

=head1 DESCRIPTION

Acme::MadokaMagica is ...

=head1 LICENSE

Copyright (C) AnaTofuZ.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

AnaTofuZ E<lt>e155730@ie.u-ryukyu.ac.jpE<gt>

=cut

