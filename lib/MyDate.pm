package MyDate;

use strict;
use warnings;

=head3 is_leap_year
    
    my $is_leap_year = MyDate->is_leap_year($year);    

Calculates if $year is a leap year.

Return true if it is, false if not.

=cut

sub is_leap_year {
    my ($class, $year) = @_;
    my $ret = 0;
    $year ||= '';

    return 1 if $year % 400 == 0;
    return 0 if $year % 100 == 0;
    return 1 if $year % 4   == 0;
    return 0;
}

my $is_leap = MyDate->is_leap_year(1191);

1;


