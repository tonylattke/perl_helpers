################################## Printing Variables ###################################

# Using Strings
$foo = "World";
print "Hello, $foo!\n";

# Using numbers
$minutes = 60;
print "1 Hour have $minutes minutes.", "\n";

# Using Floating point numbers
$celcius   = 1;
$farenheit = 32 + $celcius*(9.0/5);
print "$celcius Celcius are $farenheit Farenheit grades", "\n";

# Using Floating point numbers with fixed amount digits of the right
# Only the first 5 first digits of phi will be showed with %.5f
$phi = 1.618033988749894848;
$aux = sprintf("%.5f", $phi);
print "The golden ratio $aux", "\n";

# Print text with multiline string
print "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
Phasellus mattis ac tortor sed fringilla. Etiam aliquam
turpis sit amet nisi molestie, nec accumsan massa tempus.\n";

################################## Operating Variables ##################################

# Numbers
$foo = 23;
$bar = 19;
$baz = $foo + $bar;	# Plus
print "$foo + $bar is: $baz", "\n";

$foo = 69;
$bar = 27;
$baz = $foo - $bar;	# Minus
print "$foo - $bar is: $baz", "\n";

$foo = 7;
$bar = 6;
$baz = $foo * $bar;	# Multiply
print "$foo * $bar is: $baz", "\n";

$foo = 420;
$bar = 10;
$baz = $foo / $bar;	# Divide
print "$foo / $bar is: $baz", "\n";

$foo = 429;
$bar = 43;
$baz = $foo % $bar; # Module
print "$foo mod $bar is: $baz", "\n";

$foo = sqrt(42);
$bar = 2;
$baz = $foo ** $bar; # Pow
print "$foo to the power of $bar is: $baz", "\n";

# Strings
$foo = "Perl";
$bar = "Works";
print $foo . " " . $bar, "\n";

$foo = '"It Wokrs"'; # Single quotes print literally text
print $foo, "\n";

$foo = "Lorem ipsum dolor sit amet";
$foo =~ s/ /_/g; # Replacing spaces by _
print $foo, "\n";

$foo = "Lorem ipsum dolor sit amet";
print substr($foo, 0,1), "\n"; 	# First char on string "Lorem ipsum dolor sit amet"
print substr($foo, 6,5), "\n";	# From char 6 till 5 chars more on string "Lorem ipsum dolor sit amet"
print substr($foo, 0,5), "\n";	# First 5 chars on string "Lorem ipsum dolor sit amet"
print substr($foo, 6,-1), "\n"; # 6 till the end -1 chars on string "Lorem ipsum dolor sit amet"