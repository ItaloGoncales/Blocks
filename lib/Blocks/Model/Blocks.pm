package Blocks::Model::Blocks;

use strict;
use base 'Catalyst::Model::DBIC::Schema';

__PACKAGE__->config(
    schema_class => 'Blocks::Schema',
);

=head1 NAME

Blocks::Model::Blocks - Catalyst DBIC Schema Model

=head1 SYNOPSIS

See L<Blocks>

=head1 DESCRIPTION

L<Catalyst::Model::DBIC::Schema> Model using schema L<Blocks::Schema>

=head1 GENERATED BY

Catalyst::Helper::Model::DBIC::Schema - 0.61

=head1 AUTHOR

Todo Devel

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
