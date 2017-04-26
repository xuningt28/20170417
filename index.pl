#!/usr/bin/perl
my $scalar = 1;
my @array = (1,2,3);
my %hash  = ('zdd'=>30,'autumn'=>27);

my $sref = \$scalar;        # scalar reference
my $aref = \@array;         # array  reference
my $href = \%hash;          # hash   reference



#### 引用的访问  #####
# 方法一         name = $name
print $$sref, "\n";
print @$aref, "\n";
print %$href, "\n";
print $$aref[2], "\n" ;
print $$href{'zdd'}, "\n";


# 方法二          name = {$name}
# 数组引用  
@a                @{$aref}             # An array
reverse @a        reverse @{$aref}     # Reverse the array    
$a[3]             ${$aref}[3]          # An element of the arr
$a[3]=17          ${$aref}[3]=17       # Assign an element    

# 哈希引用 
%h                %{$href}             # A hash
keys %h           keys %{$href}        # Get the keys 
$h{'red'}         ${$href}{'red'}      # An element 
$h{'red'} = 17;   ${$href}{'red'} = 17 # Assign an element


# 方法三 
$aref ->[]                             # 数组解引用 
$href ->{}                             # 哈希解引用 
$href ->()                             # 子过程解引用 

$aref->[0] = 3;
$href->{name} = "autumn";
$sref = 2;

#### 解引用的总结  ####
my $scalar = 1 ;
my @array = (1, 2, 3) ;
my %hash = ('zdd' => 30, 'autumn' => 27) ;

my $sref = \$scalar ;   # scalar reference
my $aref = \@array ;    # array reference
my $href = \%hash ;     # hash reference

# 方法一
print $$sref, "\n" ;
print @$aref, "\n" ;
print %$href, "\n" ;
print $$aref[2], "\n" ;
print $$href{'zdd'}, "\n" ;

# 方法二
print ${$sref}, "\n" ;
print @{$aref}, "\n" ;
print %{$href}, "\n" ;
print ${$aref}[2], "\n" ;
print ${$href}{'zdd'}, "\n" ;

# 方法三，不适用于标量
print $aref->[0], "\n" ;
print $href->{'zdd'}, "\n" ;

