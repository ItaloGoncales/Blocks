use utf8;
package Blocks::Schema::Result::TagsBlock;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Blocks::Schema::Result::TagsBlock

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<TagsBlocks>

=cut

__PACKAGE__->table("TagsBlocks");

=head1 ACCESSORS

=head2 idtag

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 idblock

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "idtag",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "idblock",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</idtag>

=item * L</idblock>

=back

=cut

__PACKAGE__->set_primary_key("idtag", "idblock");

=head1 RELATIONS

=head2 idtag

Type: belongs_to

Related object: L<Blocks::Schema::Result::Tag>

=cut

__PACKAGE__->belongs_to(
  "tag",
  "Blocks::Schema::Result::Tag",
  { idtag => "idtag" },
  { is_deferrable => 1, on_delete => "NO ACTION", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07043 @ 2015-06-01 12:10:36
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:CRb2txrwdcneNVvGIqjz/Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;