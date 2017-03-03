package Acme::MadokaMagica::TvMembers;

use Mouse;

use utf8;
use Data::Section::Simple;
use YAML::Tiny;


no Mouse;

sub name {
    my ($self) = @_;
    return $self->lastname . ' ' .$self->firstname;
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
