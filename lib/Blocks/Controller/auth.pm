package Blocks::Controller::auth;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

Blocks::Controller::auth - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    if ( $c->user() ){
        $c->response->redirect( '/' );
    }else{
        $c->response->redirect( '/auth/login' );
    }
}

sub login :Local :ActionClass('REST') { }

sub login_GET {
    my ( $self, $c ) = @_;

    if ( $c->user() ){
        $c->response->body( "redirect to last page" );
    }else{
        $c->stash();
    }
}

sub login_POST {
    my ( $self, $c ) = @_;

    my $username = $c->request->param('user');
    my $password = $c->request->param('password');

    if ( $c->authenticate( { email => $username, password => $password })){
        $c->response->redirect('/');
    }else{
        $c->response->redirect( '/auth/login' );
    }
}

sub logout :Local{
    my ( $self, $c ) = @_;

    $c->logout() if $c->user();

    $c->response->redirect('/auth/login');
}


=encoding utf8

=head1 AUTHOR

Todo Devel

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
