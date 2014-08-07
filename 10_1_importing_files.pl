require "10_0_importing_files.pm";

################################ Import and use modules #################################
# Use a Class
$t = new Person; # other way $t = Person->new();

# Use a function of package
testModule::hello();