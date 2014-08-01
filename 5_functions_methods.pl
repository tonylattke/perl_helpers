######################## Example 1 - Create a function and using ########################

# Even or not
# @param[0] : Number to decide
# @return : True if the number is even, otherwise Flase
sub even {
	@params = @_;
	return $params[0] % 2 == 0;
}

# Testing Function
for $aux (0..10){
	if (even($aux)){
		print "$aux - Even", "\n";
	} else {
		print "$aux - Odd", "\n";
	}
}

################################# Example 2 - Recursion #################################

# Factorial of number
# @param[0] : Number
# @return : Factorial value of number
sub factorial {
	my $value = @_[0];
	if ($value <= 1) {
		return 1;
	}
	return $value * factorial($value -1);
}

# Fibonacci
# @param[0] : Number
# @return : Fibonacci value
sub fibonacci {
	my $value = @_[0];
	if ($value == 0) {
		return 0;
	} elsif ($value == 1) {
		return 1;
	}
	return fibonacci($value-1) + fibonacci($value-2);
}

# Testing Function
$number = 7;
$factorial_result = factorial($number);
$fibonacci_result = fibonacci($number);
print "Factorial of $number is $factorial_result", "\n";
print "Fibonacci of $number is $fibonacci_result", "\n";

#################################### Example of main ####################################
sub main {
	my @params = @ARGV;
	print @params, "\n";
 	print 'Here is the main', "\n";
}

&main();