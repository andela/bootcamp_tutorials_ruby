# basics on classes, instance methods, and class methods
class Dog
  def bark
    "woof"  # => "woof"
  end
end

Dog.new.bark  # => "woof"

class Dog1
  def self.bark
    "woof woof"  # => "woof woof"
  end
end

Dog1.bark  # => "woof woof"

# basics on getters and setters. the new class method automatically calls the initialize instance method which initilaizes an object
# we have a setter and a getter in this class.

class Person
  def initialize(name)
    @name = name        # => "Jeff Wan"
  end

  def name
    @name               # => "Jeff Wan", "new jeff"
  end

  def name=(new_name)
    @name = new_name    # => "new jeff"
  end
end

jeff = Person.new("Jeff Wan")  # => #<Person:0x007fc6c587ca88 @name="Jeff Wan">
jeff.name                      # => "Jeff Wan"
jeff.name = "new jeff"         # => "new jeff"
jeff.name                      # => "new jeff"



# basics on modules and including modules into classes. Modules are ways to group related methods together but the modules cannot
# contain state or instance variables. Modules are just collections of methods. They are not classes or objects since
# there is no need to persist state or data.

module FlyingAbility
  def fly
    "flying"          # => "flying", "flying", "flying"
  end
end

class Bird
  include FlyingAbility  # => Bird
end

class Pigeon
  include FlyingAbility  # => Pigeon
end

class Airplane
  include FlyingAbility  # => Airplane
end

Bird.new.fly      # => "flying"
Pigeon.new.fly    # => "flying"
Airplane.new.fly  # => "flying"


# classes in Ruby are open. Observe this:
class Array
  def new_method
    "this is weird"  # => "this is weird"
  end
end

[].new_method  # => "this is weird"

# Modules also provide a way for you to not bleed into the global namespace or overwrite preexisting classes. Observe,
# JeffsArray::Array does not add methods onto Ruby's Array class. In order to call this hello method we need to write:
# JeffsArray::Array.new.hello. Our hello method does not add onto Ruby's Array class.

module JeffsArray
  class Array
    def hello
      "hello world"  # => "hello world"
    end
  end
end

JeffsArray::Array.new.hello  # => "hello world"
[].hello                     # ~> NoMethodError: undefined method `hello' for []:Array



# ~> NoMethodError
# ~> undefined method `hello' for []:Array
# ~>
# ~> /Users/Jwan/Dropbox/programming/andela/bootcamp/bootcamp_materials_ruby/class_basics.rb:90:in `<main>'
