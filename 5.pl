#!/usr/bin/perl
use XML::DOM;


# 输入判断
my $file = shift;
chomp(my $hostname=qx/hostname/);
$file="${hostname}.xml" if (!$file);


#　xml 分析
sub ipt_xml()
{
my $flag = ();
my $parser = new XML::DOM::Parser;
my $doc = $parser->parsefile ("$file");
my $nodes = $doc->getElementsByTagName ("docker");
my $n = $nodes->getLength;

for (my $i = 0; $i < $n; $i++)
 {
     my %ipt=();
     my $node = $nodes->item ($i);                                                     
     my $portmap = $node->getAttributeNode ("gameportmapping"); 
     my $hostname = $node->getAttribute ("hostname") if ($_ =~ m/kofgame558_and/);
     my $wlj_nei = $node->getAttribute ("serverip");                                  
     $all=$portmap ->getValue;                                                        
     my @all_rule = split(/,/, $all);
     my %ipt_rule;
     foreach (@all_rule)
       {
          if ( $_ =~ /^([\d]*)-([\d]*)$/ )
            {
             $ipr="$hostname iptables -t nat -D PREROUTING -d  $wlj_nei -p tcp -m tcp --dport $1  -j DNAT --to-destination $wlj_nei:$2 \n";
            #push %ipt_rule,$ipr;
            }

       }
     
 }
return @all;
}
 
@a1=ipt_xml();

for(@a1){print "$_\n"};


 # Print doc file
 #$doc->printToFile ("out.xml");

 # Print to string
 #print $doc->toString;

 # Avoid memory leaks - cleanup circular references for garbage collection
 #$doc->dispose;
