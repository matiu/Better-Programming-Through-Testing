package MyDate;

use strict;
use warnings;


use constant TRUE   => 1==1;
use constant FALSE  => !TRUE;


=head3 is_leap_year
    
    my $is_leap_year = MyDate->is_leap_year($year);    

Calculates if $year is a leap year.

Return true if it is, false if not.

=cut

sub is_leap_year {
    my ($class, $year) = @_;
    my $ret = 0;
    $year ||= '';

    return TRUE if $year % 400 == 0;
    return FALSE if $year % 100 == 0;
    return TRUE if $year % 4   == 0;
    return FALSE;
}

my $is_leap = MyDate->is_leap_year(1191);

1;


