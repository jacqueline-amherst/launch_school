# What is the default return value of to_s when invoked on an object? 
# Where could you go to find out if you want to be sure?

# The default return value of to_s on an object depends on the class.
# For a custom object, the default return value for to_s is that object's class and identifier as a string.
# This is inherited from the Object superclass, which is where details can be found for default behavior.
# If a custom to_s method is defined, then you could check the Class definition to see what the return value would be.
