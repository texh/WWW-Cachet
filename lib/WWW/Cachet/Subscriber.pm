package WWW::Cachet::Subscriber;

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

has email => (
  is       =>'rw', 
  required => TRUE
);

has verify => (
  is => 'rw',
);

has components => (
  is => 'rw',
);

has verified_code => (
  is  =>'rw', 
);

has verified_at => (
  is  =>'rw', 
);

has created_at => (
  is => 'rw'
);

has updated_at => (
  is => 'rw'
);

1;
__END__
=head1 NAME

WWW::Cachet::Subscriber - Perl wrapper for Cachet API's metric points

=head1 SYNOPSIS

  use WWW::Cachet::Subscriber;

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