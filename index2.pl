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

print Dumper($a) ."\n"x2;                          #1
print "####\n";

print Dumper(\@myarray) ."\n"x2;                   #2
print "####\n";

print Dumper(\%myhash) ."\n"x2;                    #3
print "####\n";

print Dumper((\%myhash, \@myarray)) ."\n"x2;       #4


=cut
$VAR1 = 'good';                                   #1 result


####



$VAR1 = [                                        #2 result
          'hello',
          'world',
          '123',
          '4.5'
        ];


####


$VAR1 = {                                        #3 result
          'betty' => 'bye/n',
          'bar' => '12.4',
          'wilma' => '1.72e+30',
          'foo' => 35,
          '2.5' => 'hello'
        };


####



$VAR1 = {                                        #4 result
          'betty' => 'bye/n',
          'bar' => '12.4',
          'wilma' => '1.72e+30',
          'foo' => 35,
          '2.5' => 'hello'
        };
$VAR2 = [
          'hello',
          'world',
          '123',
          '4.5'
        ];

=cut
