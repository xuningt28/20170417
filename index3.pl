#!/usr/bin/perl -w
use Data::Dumper;
use Storable;

my $a = "good";

my @myarray = ("hello", "world", "123", 4.5);

my %myhash = ( "foo" => 35,
   "bar" => 12.4,
   "2.5"=> "hello",
   "wilma" => 1.72e30,
   "betty" => "bye/n");

print Dumper($a) ."\n"x2;

print Dumper(\@myarray) ."\n"x2;

print Dumper(\%myhash) ."\n"x2;

print Dumper((\%myhash, \@myarray)) ."\n"x2;


###use Storable
print "\nmethod 1,use Storable retrieve data:\n";
print "#######\n"x2;
store \%myhash,'./file.txt'; #保存数据

print Dumper(\%$hashref);
