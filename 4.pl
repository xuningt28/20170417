#!/usr/bin/perl
use XML::DOM;

 my $parser = new XML::DOM::Parser;
 my $doc = $parser->parsefile ("s.xml");

 # print all HREF attributes of all CODEBASE elements
 my $nodes = $doc->getElementsByTagName ("CODEBASE");
 my $n = $nodes->getLength;

 for (my $i = 0; $i < $n; $i++)
 {
     my $node = $nodes->item ($i);
     my $href = $node->getAttributeNode ("HREF");
     print $href->getValue . "\n";
 }

 # Print doc file
 $doc->printToFile ("out.xml");

 # Print to string
 print $doc->toString;

 # Avoid memory leaks - cleanup circular references for garbage collection
 $doc->dispose;

4444
5555
