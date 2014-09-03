use strict;
use warnings;
package Math::Shape::Line;
$Math::Shape::Line::VERSION = '0.01';
use 5.008;
use Carp;
use Math::Shape::Vector;

# ABSTRACT: a 2d vector line object


sub new {
    croak 'incorrect number of args' unless @_ == 5;
    my ($class, $x1, $y1, $x2, $y2) = @_;
    bless { base        => Math::Shape::Vector->new($x1, $y1),
            direction   => Math::Shape::Vector->new($x2, $y2),
          }, $class;
}

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Math::Shape::Line - a 2d vector line object

=head1 VERSION

version 0.01

=head1 METHODS

=head2 new

Constructor, requires 4 values: the x,y values for the base and direction vectors.

    my $line = Math::Shape::Line->new(1, 2, 3, 4);

=head1 AUTHOR

David Farrell <sillymoos@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by David Farrell.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
