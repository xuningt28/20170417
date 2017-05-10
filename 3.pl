#!/usr/bin/perl
use XML::Simple;
use Data::Dumper;
use XML::Simple;
use Data::Dumper;

$xml = XMLin('s.xml');
print Dumper($xml);
