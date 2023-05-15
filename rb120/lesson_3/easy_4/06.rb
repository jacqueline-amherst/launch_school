class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
  end

  def show_template
    template
  end
end

# class Computer
#   attr_accessor :template

#   def create_template
#     @template = "template 14231"
#   end

#   def show_template
#     self.template
#   end
# end

comp = Computer.new
p comp

# What is the differenc in how the code works in the two classes above?

# There is not a real difference in the two pieces of code.
# `template` is a call to the getter method of @template in each, but `self` is prepended unnecessarily in the second example.