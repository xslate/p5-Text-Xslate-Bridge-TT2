package Text::Xslate::Bridge::TT2;

use 5.008_001;
use strict;
use warnings;

our $VERSION = '1.0000';

use parent qw(Text::Xslate::Bridge);
use Template::VMethods;

__PACKAGE__->bridge(
    scalar => $Template::VMethods::TEXT_VMETHODS,
    array  => $Template::VMethods::LIST_VMETHODS,
    hash   => $Template::VMethods::HASH_VMETHODS,
);

1;
__END__

=head1 NAME

Text::Xslate::Bridge::TT2 - Template-Toolkit virtual methods for Xslate

=head1 VERSION

This document describes Text::Xslate::Bridge::TT2 version 1.0000.

=head1 SYNOPSIS

    use Text::Xslate::Bridge::TT2;

    my $xslate = Text::Xslate->new(
        function => { Text::Xslate::Bridge::TT2->methods },
    );

    print $xslate->render_string('<: "foo".length() :>'); # => 3

=head1 DESCRIPTION

Template-Toolkit sucks, but has a few useful features. Virtual methods is such a feature.
This module provides Xslate with Template-Toolkit virtual methods.

=head1 INTERFACE

=head2 Class methods

=head3 C<< Text::Xslate::Bridge::TT2->methods() -> %methods >>

=head1 DEPENDENCIES

Perl 5.8.1 or later.

=head1 BUGS

All complex software has bugs lurking in it, and this module is no
exception. If you find a bug please either email me, or add the bug
to cpan-RT.

=head1 SEE ALSO

L<Text::Xslate>

L<Template>

L<Template::Manual::VMethods>

=head1 AUTHOR

Goro Fuji (gfx) E<lt>gfuji(at)cpan.orgE<gt>

=head1 LICENSE AND COPYRIGHT

Copyright (c) 2010, Goro Fuji (gfx). All rights reserved.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself. See L<perlartistic> for details.

=cut
