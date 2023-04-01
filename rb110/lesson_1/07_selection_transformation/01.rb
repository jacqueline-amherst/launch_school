# In this example we want to select the key-value pairs where the value is 'Fruit'

=begin
  
- initialize empty hash, `fruits`
- initialize array `produce_keys`, set to the keys from `produce` hash
- initialize `counter`, set to 0

- begin loop:
  - initialize `current_produce` set to the element at the index [counter] of `produce_keys`
  - if the value associated with the key `current_produce` in hash `produce` is "Fruit"
    - add that value to the array `fruits`
  - add 1 to `counter`
  - break if `counter` is equal to the length of `fruits` hash

  - return `fruits`
=end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(produce)
  fruits = {}
  produce_keys = produce.keys
  counter = 0 

  loop do
    break if counter == produce_keys.size
    current_produce = produce_keys[counter]
    fruits[current_produce] = "Fruit" if produce[current_produce] == 'Fruit'
    counter += 1
  end

  fruits
end

p select_fruit(produce) #== {"apple"=>"Fruit", "pear"=>"Fruit"}
