#!/usr/bin/perl
use Data::Dumper;

my @fruit = qw(apple banana orang);

my @vegetable = ("tomato","potato","cabbage",\@fruit);

my @meat = ("chicken","fish","beaf",\@vegetable);

my $ref = \@meat;

print "ref:@$ref","####\n";

print "meat:@meat","####\n";

print "\n";
print Dumper($ref),"####\n";

print "\n";
print Dumper(@meat),"####\n";
