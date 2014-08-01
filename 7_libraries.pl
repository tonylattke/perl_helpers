###################################### Datetime #########################################
# Now
$tm = localtime();
print "$tm", "\n";

# Now - 2 Hours
$two_hours = time() - 2 * 60 * 60;
$tm = localtime($two_hours);
print "$tm", "\n";

####################################### Math ############################################
use Math::Trig;

# Elemental numbers
$aux_pi = pi;
print exp(1), "\n";

sub phi{
	return (1 + sqrt(5))/2
}

$x = 10;

# It's a number
if ($x =~ /^[+-]?\d+(.\d+)?$/ ) {
    print "Is a number\n";
} else {
    print "Is not a number\n";
}

int($x);		# Round x

exp($x); 		# e to the power of x

log($x); 		# Default base e log(x)/log(10)

sqrt($x);

sin($x);
cos($x);
tan($x);

######################################## Random #########################################

# Random number betwen 0 and 1
print rand(), "\n";

# Random sort of list
use List::Util qw(shuffle); 
@mylist = (4, 8, 15, 16, 23, 42);
@random_array = shuffle(@mylist);
print "@random_array", "\n";

# Random member of list
print $mylist[rand @mylist], "\n";

# Random int on range
$range = 50;
$minimum = 100;
$random_number = int(rand($range)) + $minimum;