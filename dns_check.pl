#!/usr/bin/perl
use Data::Dumper;

my $hostname = $ARGV[0];
my @servers = qw(202.106.0.20 219.141.136.10 8.8.8.8);
my %results;

foreach my $server (@servers)  {    
                                    $results{$server}= ( $hostname, $server );
                               }



my %inv = reverse %results;

if (scalar keys %inv > 1) {   
    print "There is a discrepancy between DNS servers:\n";
    print Data::Dumper->Dump( [ \%results ], ['results'] ), "\n";
 } 
