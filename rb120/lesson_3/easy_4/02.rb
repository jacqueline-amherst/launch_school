# Alan created the following code to keep track of items for a shopping cart application he's writing:

class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    # prevent negative quantities from being set
    quantity = updated_count if updated_count >= 0
  end
end

# Alyssa looked at the code and spotted a mistake. 
# "This will fail when update_quantity is called", she says.
# Can you spot the mistake and how to address it?

# There are a couple issues that need to be addressed.
# First, there needs to be a setter method for @quantity or else it can't be updated.
# This can be remedied by removing `:quantity` from `attr_reader` and adding a new line `attr_accessor :quantity`.
# That's not quite enough though.
# As line 13 is currently written Ruby will initialize a new local variable `quantity` instead of re-assigning @quantity.
# In order to make this line work, `quantity` needs to be updated to `self.quantity` so that the setter method is being called.
