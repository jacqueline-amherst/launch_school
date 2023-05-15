require 'pry'
require 'pry-byebug'

class Pet
  attr_reader :animal, :name

  def initialize(animal, name, shelter)
    @animal = animal
    @name = name
    shelter.add_unadopted_pet(self)
  end

  def to_s
    "a #{animal} named #{name}"
  end
end

class Owner
  attr_reader :name, :pets

  def initialize(name)
    @name = name
    @pets = []
  end

  def add_pet(pet)
    @pets << pet
  end

  def number_of_pets
    pets.size
  end

  def print_pets
    puts pets
  end
end

class Shelter
  attr_reader :unadopted_pets

  def initialize
    @owners = {}
    @unadopted_pets = []
  end

  def add_unadopted_pet(pet)
    unadopted_pets << pet
  end

  def adopt(owner, pet)
    owner.add_pet(pet)
    @owners[owner.name] ||= owner
    self.unadopted_pets.delete(pet)
  end

  def unadopted_pet_count
    unadopted_pets.size
  end

  def print_unadopted_pets
    puts "The Animal Shelter has the following unadopted pets:"
    puts unadopted_pets
  end

  def print_adoptions
    @owners.each_pair do |name, owner|
      puts "#{name} has adopted the following pets:"
      owner.print_pets
      puts "The animal shelter has #{unadopted_pet_count} unadopted pets."
    end
  end
end

shelter = Shelter.new

petunia      = Pet.new('cat', 'Petunia', shelter)
anya         = Pet.new('cat', 'Anya', shelter)
butterscotch = Pet.new('cat', 'Butterscotch', shelter)
pudding      = Pet.new('cat', 'Pudding', shelter)
darwin       = Pet.new('bearded dragon', 'Darwin', shelter)
kennedy      = Pet.new('dog', 'Kennedy', shelter)
sweetie      = Pet.new('parakeet', 'Sweetie Pie', shelter)
molly        = Pet.new('dog', 'Molly', shelter)
chester      = Pet.new('fish', 'Chester', shelter)

jamherst = Owner.new('J Amherst')

shelter.adopt(jamherst, petunia)
shelter.adopt(jamherst, anya)
shelter.print_adoptions
shelter.print_unadopted_pets
