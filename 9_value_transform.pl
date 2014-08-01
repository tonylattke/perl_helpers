use boolean;

################################### Value to String #####################################

# Integer
$value  = 42;
$aux 	= "$value";

# Float
$value  = 1.618;
$aux 	= "$value";

# Boolean
$value  = true;
$aux 	= "$value";

################################### String to Value #####################################

# Integer
$value  = "42";
$aux 	= int($value);

# Float
$value  = "1.618";
$aux	= sprintf "%.2f", $value;

# Boolean
# '0' is false
# "0" is false
# '' is false
# "" is false
# '1' is true
# "1" is true
# 'foo' is true

sub strToBool {
	if ("true" eq @_[0]){
		return true;
	}
	return false;
}

$value 	= "trues";
$aux	= strToBool($value);
print $saux or true, "\n";