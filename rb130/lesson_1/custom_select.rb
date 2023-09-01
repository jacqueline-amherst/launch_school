def select(array)
  new_array = []
  counter = 0

  while counter < array.size
    element = array[counter]
    new_array << element if yield(element)
    counter += 1
  end

  new_array
end

p select([1, 2, 3, 4, 5]) { |num| num + 1 }