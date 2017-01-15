#! /usr/bin/perl
use strict;


#first we open the file using the open or die
open(MYTEXT, "/etc/passwd.bak") || die;

my $count = 0;

while (<MYTEXT>)
{
chomp;
#we declare the columns and use the split operator in order to get the right
#terms for the program
my @columns = split (':', $_);

#we get the input from the user and if there is more than one argument or no argument then we display that message
if ($ARGV[0] eq "" || @ARGV > 1 )
{
print "Please enter one argument only.\n";
#we exit if this is the case
exit(0);
}
#in the case that there is no match then we print that
elsif (($ARGV[0] != m/@columns/))
{
print "User: $ARGV[0] does not exist.\n";
exit(0);
}
#if there is a match then we will display the directory  and the shell used
elsif (/$ARGV[0]/)
{

{
print "Home directory: $columns[5]\n";
print "Shell used: $columns[6]\n";
}
}
#we close the file that is applied
close(MYTEXT);
