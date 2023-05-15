class Parent
  def say_hi
    p "Hi from Parent."
  end
end

class Child < Parent
  def say_hi
    p "Hi from Child."
  end

  def send
    p "send from Child"
  end

  def instance_of?
    p "I am a fake instance"
  end
end

son = Child.new
p son.instance_of? Child