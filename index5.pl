#!/usr/bin/perl -w
use Data::Dumper;
open (FILE, "< hash_file")   or die "can't open hash_file: $!";
local $/=undef;            # 一次把整个文件读取进来
my $file=<FILE>;
my $hashref= eval $file;  # 重新生成##eval{$file}; 是无效的####
die "can't recreate tv data from tvinfo.perldata: $@" if $@;
close FILE         or die "can't close tvinfo: $!";
print %$hashref;
