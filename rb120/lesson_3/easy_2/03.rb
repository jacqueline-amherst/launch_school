# How do you find where Ruby will look for a method when that method is called?
# How can you find an object's ancestors?

module Taste
  def flavor(flavor)
    puts "#{flavor}"
  end
end

class Orange
  include Taste
end

class HotSauce
  include Taste
end

# There the lookup chain is a reverse heirarchy.
# It searches the class first, then the class' modules (in reverse order), then the superclass and it's modules, up the chain.
# The method #ancestors can be called on a class to find it's lookup chsin

# What is the lookup chain for Orange and HotSauce?

# The lookup chain for Orange is:
# Orange
# Taste
# Object
# Kernel
# BasicObject

# The lookup chain for HotSauce is:
# HotSauce
# Taste
# Object
# Kernel
# BasicObject