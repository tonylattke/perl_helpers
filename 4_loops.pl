# While .. then ..
print 'While', "\n";
$i = 1;
while ($i < 5) {
	print "$i", "\n";
	$i++; # $i += 1; also works
}

# While with function break, which name in perl is last
print 'While with break', "\n";
$i = 5;
$result = 1;
while (true) {
	$result *= $i;
	if ($i <= 1) {
		print "$result", "\n";
		last;
	}
	$i--; # $i -= 1; also works
}

# Until
$i = 5;
$result = 1;
until ($i <= 1) {
	$result *= $i;
	$i--;
}
print "$result", "\n";

# For .. expression .. in .. then ..
for (my $x = 0; $x <= 5; $x++) {
	print "$x", "\n";
}

# For .. in .. then ..
$value = "Perl Works";
@aux = split(//, $value); 
#split(/ /, $value); This can separate each word
for $x (@aux) {
	print "$x", "\n";
}

# Foreach .. in .. then ..
@days = ('M','T','W','T','F','S','S');
foreach $x (@days) {
	print "$x", "\n";
}