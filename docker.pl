#!/usr/bin/perl
use Getopt::Long;
use XML::DOM;

 my $parser = new XML::DOM::Parser;
 my $doc = $parser->parsefile ("file.xml");

# my $nodes = $doc->getElementsByTagName ("Datas");
# my $n = $nodes->getLength;
#
# for (my $i = 0; $i < $n; $i++)
# {
#     my $node = $nodes->item ($i);
#     my $href = $node->getAttributeNode ("hostname");
#     print $href->getValue . "\n";
#     print "#########\n";
# }
#
# # Print doc file
# $doc->printToFile ("out.xml");
#
# # Print to string
# print $doc->toString;
#
# # Avoid memory leaks - cleanup circular references for garbage collection
# $doc->dispose;


$document_root  = $doc->getDocumentElement();
 my $config_node = $document_root->getFirstChild();
 foreach my $node ( $config_node->getChildNodes() ) {
   if ( $node->getName() eq "Datas") {
        print "ok\n";
   }
 }
