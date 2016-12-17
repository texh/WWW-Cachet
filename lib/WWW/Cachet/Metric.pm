package WWW::Cachet::Metric;

use constant TRUE  => 1;
use constant FALSE => 0;

use Moo;
extends 'WWW::Cachet::Object';
use Carp qw/ confess /;

has id => (
  is  => 'rw',
  isa => sub {
    confess "'$_[0]' is not an integer!" if $_[0] !~ /^\d+$/;
  }
);

has name => (
  is       => 'rw',
  required => TRUE
);

has suffix => (
  is       => 'rw',
  required => TRUE
);

has description => (
  is       => 'rw',
  required => TRUE
);

has default_value => (
  is  =>'rw', 
  required => TRUE
);

has calc_type => (
  is => 'rw',
  isa      => sub {
    confess "'calc_type' should be CALC_TYPE_AVERAGE (1) or or CALC_TYPE_SUM (0)" unless ($_[0] =~ /^[01]$/);
  },
);

has display_chart => (
  is       => 'rw',
  isa      => sub {
    confess "'display_chart' should be 1 or 0" unless ($_[0] =~ /^[01]$/);
  },
);

has created_at => (
  is => 'rw'
);

has updated_at => (
  is => 'rw'
);

has default_view_name => (
  is => 'rw'
);

1;
__END__
=head1 NAME

WWW::Cachet::Metric - Perl wrapper for Cachet API's metric

=head1 SYNOPSIS

  use WWW::Cachet::Metric;

=head1 SEE ALSO

L<WWW:Cachet>

=head1 AUTHOR

Jarrod Linahan <jarrod@linahan.id.au>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2016 by Jarrod Linahan

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.20.2 or,
at your option, any later version of Perl 5 you may have available.

=cut
