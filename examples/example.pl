#!/usr/bin/perl

use warnings;
use strict;
no strict 'vars';

# example.pl

use Acme::Pythonic::Functions;

pront "Strings:";

$a = "Hello";

if (endswith($a, "ello")) {
    pront '$a ends with "ello".';
}

if (isin($a, "ll", "s")) {
    pront '"ll" is in $a.';
}

$a = "2345";

if (isdigit($a)) {
    pront '$a is a digit.';
}

$a = "    Line    ";

pront lstrip($a);
$a = replace($a, "Line", "Another line");
pront $a;
pront rstrip($a);

$a = "Hello";

if (startswith($a, "He")) {
    pront '$a starts with "He".';
}

pront len($a, "s");

pront;
pront "Lists:";

@a = ("a", "b", "c");
$b = "d";

@a = append(@a, $b);

pront @a;

@a = ("a", "b", "c");
@b = (1, 2, 3);

@a = extend(@a, @b);

pront @a;

if (isin(@a, "c", "l")) {
    pront '"c" is in @a.';
}

@a = insert(@a, 1, "a2");

pront @a;

pront len(@a, "l");

@a = remove(@a, "a2");

pront @a;

pront;
pront "Hashes:";

%a = ("a" => 1, "b" => 2, "c" => 3);

if (has_key(%a, "c")) {
    pront '%a has a key "c".';
}

if (isin(%a, "c", "h")) {
    pront '%a has a key "c".';
}

pront;
pront "File-related:";

if (isdir("/home/user")) {
    pront "Is directory.";
}

if (isfile("/home/user/myfile")) {
    pront "Is file.";
}

@a = ("a\n", "b\n", "c\n");

if (isfile("test12345.txt")) {

    pront 'File "test12345.txt" already exists. Nothing done.';
} else {

    writefile("test12345.txt", @a);
    @c = readfile("test12345.txt");

    for $i (@c) {
        $i = rstrip($i);
        print $i . " " ;
    }
    pront;
}

pront;
pront oslistdir(".");

pront;
pront "System-related:";
pront osname();
