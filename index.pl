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


#####  匿名数组示例-开始  ######
## 
# $aref2 = $aref1; 将使得$aref2和$aref1指向同一个数组，
# 如果想将$aref1指向的数组拷贝一份给$aref2的话，使用下面的方法，[]里面对数组进行解引用，而[]以解引用后的数组为内容生成了一个新的匿名数组，又赋值给$aref2
# 不能使用下面的形式，外层的[]是不可缺少的。由于=左边是标量，所以右边的数组会被解释为标量环境，得到的是数组元素个数，而不是元素本身。但是如果加上[]就可以了，这样perl知道这是一个匿名数组的赋值

my $aref1=[1,[2,3],[3,4,5]];      # 匿名数组

$aref2 = $aref1;                  # 相同引用
$aref3 = [@{$aref1}];             # 复制引用
$aref4 = @{$aref1};               # 匿名数组个数

print $aref1,"\n";                # array       ARRAY(0x1dda0f8)
print $aref2->[1][1],"\n";        # array 同    $aref1
print $aref3->[1][1],"\n";        # array 不同  $aref1
print $aref4->[1][1],"\n";        # null  取值为匿名数组长度 

#####  匿名数组示例-结束  ######



#####  判断数组是否是引用-开始 #####

my $aref1 = [1, 2, 0] ;

print ref $aref1, "\n" ;          #输出 ARRAY

if (ref $aref1) {
    print "true\n" ;              #输出 true
}

#####  判断数组是否是引用-结束 #####





#####  判断数组引用相同-开始 #####

my $aref1 = [1, 2, 0] ;
my $aref2 = $aref1 ;
print $aref1, "\n" ;
print $aref2, "\n" ;

if ($aref1 eq $aref2) {
    print "reference equal\n" ;
}
if($aref1 == $aref2) {
    print "reference equal\n" ;
}

#####  判断数组引用相同-结束 #####

