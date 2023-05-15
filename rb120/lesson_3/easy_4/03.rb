# In the last question Alan showed Alyssa this code which keeps track of items for a shopping cart application:

class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    quantity = updated_count if updated_count >= 0
  end
end

# Alyssa noticed that this will fail when update_quantity is called. 
# Since quantity is an instance variable, it must be accessed with the @quantity notation when setting it. 
# One way to fix this is to change attr_reader to attr_accessor and change quantity to self.quantity.

# Is there anything wrong with fixing it this way?

# If all that is changed about `attr_*` is that it it's changed to `accessor`, then we need to put `:product_name` on another line with `attr_reader`.


# I didn't catch that implementing this solution would cause the potentially unwanted side effect of allowing the user to change the value of `@quantity`.
# By adding a setter method, the user could go around the `update_quantity` method and change the variable directly, which might be problematic.