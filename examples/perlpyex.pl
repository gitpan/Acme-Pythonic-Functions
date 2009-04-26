#!/usr/bin/perl

use warnings;
use strict;
no strict 'vars';

# perlpyex.pl

use Acme::Pythonic::Functions;

# If you use Perl 5, Version 5.10 or higher, change the comment-character
# in the two following "use"-statements:

use Perl6::Say;
# use feature 'say';

use Acme::Pythonic; # Enables Python-like indentation-conventions.

say "Strings:"

$a = "Hello"

if endswith($a, "ello"):
    say '$a ends with "ello".'

if isin($a, "ll", "s"):
    say '"ll" is in $a.'

$a = "2345"

if isdigit($a):
    say '$a is a digit.'

$a = "    Line    "

say lstrip($a)
$a = replace($a, "Line", "Another line")
say $a
say rstrip($a)

$a = "Hello"

if startswith($a, "He"):
    say '$a starts with "He".'

say len($a, "s")

say
say "Lists:"

@a = ("a", "b", "c")
$b = "d"

@a = append(@a, $b)

saylist(@a)

@a = ("a", "b", "c")
@b = (1, 2, 3)

@a = extend(@a, @b)

saylist(@a)

if isin(@a, "c", "l"):
    say '"c" is in @a.'

@a = insert(@a, 1, "a2")

saylist(@a)

say len(@a, "l")

@a = remove(@a, "a2")

saylist(@a)

say
say "Hashes:"

%a = ("a" => 1, "b" => 2, "c" => 3)

if has_key(%a, "c"):
    say '%a has a key "c".'

if isin(%a, "c", "h"):
    say '%a has a key "c".'

say
say "File-related:"

if isdir("/home/user"):
    say "Is directory."

if isfile("/home/user/myfile"):
    say "Is file."

@a = ("a\n", "b\n", "c\n")

if isfile("test12345.txt"):

    say 'File "test12345.txt" already exists. Nothing done.'

else:

    writefile("test12345.txt", @a);
    @c = readfile("test12345.txt")

    for $i @c:
        $i = rstrip($i)
        print $i . " " 
    say

say
say "System-related:"

say osname()


sub saylist:

    for $i @_:
        print $i . " " 
    say

