#!/usr/bin/perl
foreach(1..10){
print "Iteration number $_.\n\n";
print "Please choose: last, next, redo, or none of the above?";
chomp(my $choice = <STDIN>);
print "\n";
last if $choice =~ /last/i;
next if $choice =~ /next/i;
redo if $choice =~ /redo/i;
print "That was’t any of the choices… onward!\n\n";
}
print "That’s all, folks\n";
