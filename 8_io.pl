################################### Input reading #######################################
print "Introduce the file name: ";
$filename = <STDIN>;

#################################### Create file ########################################

open($fh, '>', $filename) or die "Could not open file '$filename' $!";

# Write the text
print $fh "test on file\n";
print $fh "second text\n";
print $fh "third text\n";
print $fh "fourth text";

# Close the file
close $fh;

##################################### Read file ########################################$
open($fh, '<:encoding(UTF-8)', $filename)
  or die "Could not open file '$filename' $!";

## Option 1 - Read and save on array
my @lines = <$fh>;
print "@lines\n";

# Reset the seek (position 0 on file)
seek $fh, 0, 0;

## Option 2 - Read with while
while ($row = <$fh>) {
	chomp $row;
	print "$row\n";
}

# Close the file
close $fh;