# Given the array below, turn it into a hash where the names are the keys and the values are the positions of the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones.each_with_object({}) do |name, hash|
  position = flintstones.index(name)
  hash[name] = position
end
