#!/usr/bin/perl -w
#

use strict;
use warnings;

use Test::More;


use_ok("MyDate");


ok( MyDate->is_leap_year(1989) == 0, '1989 is not a leap year' );
ok( MyDate->is_leap_year(1988) == 1, '1989 is a leap year' );
ok( MyDate->is_leap_year(2000) == 1, '2000 is a leap year' );
ok( MyDate->is_leap_year(400)  == 1, '400 is a leap year' );
ok( MyDate->is_leap_year(1900) == 0, '1900 is not a leap year' );

done_testing();
