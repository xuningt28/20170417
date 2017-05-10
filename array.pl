#/usr/bin/perl

# 数组
@a = (
       [1,2,3], 
       [4,5,6], 
       [7,8,9] 
);



print $a[1][2],"\n";
print $a[1]->[2],"\n";
print ${$a[1]}[2],"\n";
print "########\n";





# 匿名数组
my $aref = [1,[2,3],[4,5,6]];
print $aref->[0],"\n";
print $aref->[1][1],"\n";
print $aref->[2][0],"\n";
print scalar($aref->[2]),"\n";
