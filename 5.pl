#!/usr/bin/perl
use XML::DOM;

my $parser = new XML::DOM::Parser;
my $doc = $parser->parsefile ("file.xml");
my $nodes = $doc->getElementsByTagName ("docker");
my $n = $nodes->getLength;
for (my $i = 0; $i < $n; $i++)
 {
     my %ipt=();
     my $node = $nodes->item ($i);
     my $portmap = $node->getAttributeNode ("gameportmapping");
     my $hostname = $node->getAttribute ("hostname");
     my $wlj_nei = $node->getAttribute ("serverip");
     $all=$portmap ->getValue;
      
     my @all_rule = split(/,/, $all);
     my %ipt_rule;
     
     foreach (@all_rule)
       {
          if ( $_ =~ /^([0-9]*)-([0-9]*)$/ )
            {
             print "#$hostname:\n iptables -t nat -D PREROUTING -d  $wlj_nei -p tcp -m tcp --dport $1  -j DNAT --to-destination $wlj_nei:$2 \n";
            }

       }
     
 }

    

 # Print doc file
 #$doc->printToFile ("out.xml");

 # Print to string
 #print $doc->toString;

 # Avoid memory leaks - cleanup circular references for garbage collection
 $doc->dispose;
