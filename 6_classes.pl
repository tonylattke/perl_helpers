##################################### Creating Class ####################################
package Color;
sub new {
	my $class = shift;
	my $self = {
		_r => 0,
		_g => 0,
		_b => 0,
	};
	bless $self, $class;
	return $self;
}
sub str {
	my $self = shift;
	return "R: $self->{_r} G: $self->{_g} B: $self->{_b}";
};

$aux = new Color; # $aux = Color-new();
print $aux->str, "\n";

# Creating a class with Initialize method
package Person;
sub new {
	my $class = shift;
	my $self = {
		name => shift,
		age  => shift,
	};
	bless $self, $class;
	return $self;
}
sub hello {
	my $self = shift;
	print "Hello $self->{name}\n";
};

# Create an Instance
$aux = new Person("Bruce", 28);
$aux->hello;

# Change value inside class
$aux->{name} = "Tony";
$aux->hello;

###################################### Inheritance ######################################
package Civil;
our @ISA = qw(Person);

sub new {
	my ($class) = @_;
	my $self = $class->SUPER::new( $_[1], $_[2]);
	$self->{profesion_name}   = $_[3];
    bless $self, $class;
    return $self;
}

$aux = new Civil('Tony',24,'Programmer');