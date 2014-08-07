package Person;
sub new {
	my $class = shift;
	my $self = {
	};
	bless $self, $class;
	print "Person object created\n";
	return $self;
}
1;

{
	package testModule;
	sub hello {
		print "hello\n";
	}
}1;