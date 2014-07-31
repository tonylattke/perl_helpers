####################################### Tuples ##########################################

# Tuple
@mytuple = ("Bruce","Wayne");
print "@mytuple\n";

# Triplet
print ("Red", "Green", "Blue");
print "\n";

# N-Tuple
@aux = ("Batman", "Superman", "Wonder Woman", "Green Light", "Flash", "J\'onn");
print "@aux\n";

# Access
print $mytuple[0], "\n";

# Replace value
$mytuple[0] = "Thomas";
print "@mytuple\n";

######################################## Array ##########################################

# Empty 
@empty_array=();

# Append elements to the Array
@numbers = @empty_array;
push @numbers, 1;
push @numbers, 2;
push @numbers, 3;
print "@numbers\n";

# Delete the last element
pop @numbers;
print "@numbers\n";

# Delete the first element
shift @numbers;
print "@numbers\n";

# Array loaded
@lost = (4, 8, 15, 16, 23, 42);
print "Lost numbers: @lost\n";

# Length of array
# Option 1
$aux = @lost;
print "Lost numbers are only $aux numbers\n";

# Option 2
$aux = $#lost;
print "Max index in Array lost numbers $aux\n";

# Concat
@numbers_2 = (3..9);
@aux = (0,1, @numbers, @numbers_2);
print "@aux\n";

# Access to diferents elements
@squares = (1, 4, 9, 16, 36);
print "The element number 2 on the array is $squares[1]", "\n";
print "The last element on the list is $squares[-1]", "\n";

# Change value of element on array
@squares[4] = 25;
print "@squares", "\n";

# Array of array
@aux = (
	[1,2,3,4], [5,6,7,8], [9,10,11,12]
);
print "$aux[0][2]", "\n";

# Array with diferents types
@info = ('Tony', 24, True, False, ['movies','programming','games']);
print "@info", "\n";

# Delete element by index
# splice Array Index Offset
splice @info, 1, 1;
print "@info", "\n";

# Sort list
@numbers = (5, 13, 2, 1 , 21, 1, 8, 3);
@numbers = sort {$a <=> $b} @numbers;
print "@numbers", "\n";

##################################### Dictionary ########################################

# Empty dictionary
%dictionary = ();

# Append elements
$dictionary{"a"} = "Alice";
$dictionary{"e"} = "Erick";
$dictionary{"i"} = "Isaac";
$dictionary{"o"} = "Oscar";
$dictionary{"u"} = "Ursula";
print %dictionary, "\n";

# Access
print $dictionary{"i"}, "\n";

# Change Value
$dictionary{"o"} = "Oriana";
print $dictionary{"o"}, "\n";

# Keys from dictionary
@keys_dictionary = keys %dictionary;
print "@keys_dictionary", "\n";

# Values from dictionary
@values_dictionary = values %dictionary;
print "@values_dictionary", "\n";

# Dictionary loaded
%months = (
	'January' 	=> 'Capricorn',
	'February' 	=> 'Aquarius',
	'March'		=> 'Pisces',
	'April'		=> 'Aries',
	'May'		=> 'Taurus',
	'June'		=> 'Gemini',
	'July'		=> 'Cancer',
	'August'	=> 'Leo',
	'September' => 'Virgo',
	'October'	=> 'Libra',
	'November'	=> 'Scorpio',
	'December'	=> 'Sagittarius'
);
print %months, "\n";

# Number of months
$aux = scalar keys %months;
print $aux, "\n";

# Delete element
delete $months{"December"};