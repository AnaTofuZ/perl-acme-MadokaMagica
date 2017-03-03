package Acme::MadokaMagica::TvMembers;

use Mouse;

use utf8;
use Data::Section::Simple;
use YAML::Tiny;

has has_qb => (
    is => 'rw',
    isa => 'Bool',
    required => 1,
    default => 0,
);

no Mouse;

sub name {
    my ($self) = @_;
    return $self->has_qb ? $self->{witchename}:$self->lastname . ' ' .$self->firstname;
}

sub firstname {
    my $self = shift;
    return $self->{firstname};
}

sub lastname {
    my $self = shift;
    return $self->{lastname};
}

sub age {
    my $self = shift;
    return $self->{age};
}

sub color{
    my ($self) = @_;
    return $self->has_qb ? "black" :$self->{color} ;
}

sub qb {
    my ($self) = @_;
    $self->has_qb(1);
}

sub say {
    my ($self) = @_;
    return $self->{say};
}

sub cv{
    my $self = shift;
    return $self->{cv};
}

sub BUILD{
      my ($self, $args) = @_;

      my $ds = Data::Section::Simple->new( ref $self );
      my $sections = $ds->get_data_section;
      for my $section_name ( keys %{$sections} ) {
         my $yml = YAML::Tiny->read_string( $sections->{$section_name} );
         my $member_info = $yml->[0];
         for my $key ( keys %{$member_info} ) {
            $self->{$key} = $member_info->{$key};
         }
      }
        $self->{startline} = $args;

}
