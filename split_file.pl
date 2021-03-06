#!/usr/bin/perl
my $datafile  = 'database';
my $recordsep = "-=-\n";
open my $DATAFILE, '<', "$datafile" or die "Unable to open datafile:$!\n";
{   
    local $/ = $recordsep;
    print "#\n# host file - GENERATED BY $0\n# DO NOT EDIT BY HAND!\n#\n";
    my %record;
    while (<$DATAFILE>) {        
                            chomp;
                            %record = split /:\s*|\n/;
                            print "$record{address}\t$record{room}\n";
                         }    
     close $DATAFILE;
} 



=cut
eg:database

name: shimmer 
address: 192.168.1.11 
aliases: shim shimmy 
owner: David Davis 
department: software 
building: main 
room: 
manufacturer: Sun
model: M4000 
-=-
name: bendir 
address: 192.168.1.3 
aliases: ben bendoodles 
owner: Cindy Coltrane 
department: IT 
building: west 
room: 143 
manufacturer: Apple 
model: Mac Pro 
-=-
name: sulawesi 
address: 192.168.1.12 
aliases: sula su-lee 
owner: Ellen Monk 
department: design 
building: main 
room: 1116 
manufacturer: 
Apple model: Mac Pro 
-=-

=cut
