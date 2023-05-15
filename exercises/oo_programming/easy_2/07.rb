# Pet Shelter:
#   Write the classes and methods that will be necessary to make this code run, and print the following output:
# --------------
# - Class Pet with two parameters, `pet_type` and `name`
#   - * getter methods for both `pet_type` and `name`
# - Class Owner with one parameter `name`
#   - plain getter method for `name` and `pets`
#   - constructor method:
#     - set name
#     - empty hash called `pets`
#   - instance method `number_of_pets`
#     - returns in integer representing the number of pets this owner has adopted
# - Class Shelter with no parameters
#   - constructor initializes `owners` array, empty
#   - instance method `adopt` with two parameters, `owner` and `pet`
#     - add k/v pair to `owner` `pet` hash in which the pet's `name` is the key and the `type` is the value
#   - instance method `print_adoptions` wiht no parameters
#     - prints all adoptions in this format:
#       # #{owner_name} has adopted the following pets:
#       # a #{pet_type} named #{name}
# --------------

class Pet
  attr_reader :type, :name

  def initialize(type, name)
    @type = type
    @name = name
  end
end

class Owner
  attr_reader :name, :pets

  def initialize(name)
    @name = name
    @pets = {}
  end

  def number_of_pets
    pets.keys.size
  end
end

class Shelter
  attr_accessor :owners

  def initialize
    @owners = []
  end

  def adopt(owner, pet)
    owner.pets[pet.name] = pet.type
    owners << owner unless owners.include?(owner)
  end

  def print_adoptions
    owners.each do |owner|
      puts "#{owner.name} has adopted the following pets:"
      owner.pets.each { |name, type| puts "a #{type} named #{name}" }
    end
  end
end

petunia      = Pet.new('cat', 'Petunia')
anya         = Pet.new('cat', 'Anya')
butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')
jamherst = Owner.new('J Amherst')

shelter = Shelter.new
shelter.adopt(jamherst, petunia)
shelter.adopt(jamherst, anya)
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."

# Expected Output:
# P Hanson has adopted the following pets:
# a cat named Butterscotch
# a cat named Pudding
# a bearded dragon named Darwin

# B Holmes has adopted the following pets:
# a dog named Molly
# a parakeet named Sweetie Pie
# a dog named Kennedy
# a fish named Chester

# P Hanson has 3 adopted pets.
# B Holmes has 4 adopted pets.