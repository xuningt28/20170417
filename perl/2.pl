#!/usr/bin/perl
%hash=(
          a=>A,
          b=>B,
          c=>C,
);
print "(scalar(keys(%hash)))";


print "\n";
$perl_info= qx(ps $$);
print $perl_info;


$string="d-DDD";

if(($k,$v) =$string = ~m/(\w+)-(\w*)/){
           print "KEY $k VALUE $v\n";


}


#  
@keys=qw(perls before swine);
@hash{@keys}=("") x @keys;
#print @hash;



print (4|3);

