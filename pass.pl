#!/usr/bin/perl
my $passwd = '/etc/passwd';
open my $PW, '<' ,$passwd;
my ($name,$passwd,$uid,$gid,$gcos,$dir,$shell);
while ( chomp( $_ = <$PW>) ){
     ( $name,$passwd,$uid,$gid,$gcos,$dir,$shell ) = split(/:/);
     print "$name\n";
}
close $PW;
