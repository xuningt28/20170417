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
my %ipt_hash;


for (my $i = 0; $i < $n; $i++)
 {
     my $node = $nodes->item ($i);                                                     
     my $portmap = $node->getAttributeNode ("gameportmapping"); 
     my $hostname = $node->getAttribute ("hostname");
     my $wlj_nei = $node->getAttribute ("serverip");                                  
     $all=$portmap ->getValue;                                                        
     
     my @all_rule = split(/,/, $all);
     $ipt_hash{$hostname} = [@all_rule];
     #print "(@{$ipt_hash{$hostname}})\n";    
     for ((@{$ipt_hash{$hostname}})) {print "$hostname:$_\n";}
 }
}
 
ipt_xml();



 # Print doc file
 #$doc->printToFile ("out.xml");

 # Print to string
 #print $doc->toString;

 # Avoid memory leaks - cleanup circular references for garbage collection
 #$doc->dispose;
