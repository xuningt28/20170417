#!/usr/bin/perl
open( my $HOSTS, '<', '/etc/hosts' ) or die "Unable to open host file:$!\n"; 
my %addrs; 
my %names; 
while ( defined( $_ = <$HOSTS> ) ) {
    next if /^#/;   
    next if /^\s*$/;
    s/\s*#.*$//;
    chomp;    
    my ( $ip, @names ) = split;    die "The IP address $ip already seen!\n" if ( exists $addrs{$ip} );    
    $addrs{$ip} = [@names];    
    for (@names) {        
                            die "The host name $_ already seen!\n" if ( exists $names{lc $_} );        
                            $names{lc $_} = $ip;    
                 } 
                                   } 
close $HOSTS; 


#print $addrs{'127.0.0.1'};
#print scalar(@$addrs{'127.0.0.1'});
#print  #$addrs{'127.0.0.1'};

$leng=scalar(@{$addrs{'127.0.0.1'}});
print $leng;
