puts "this is a string".class
puts "this is a string".is_a?(String)
puts 1.is_a?(Numeric)

# Most methods are questions, and return a relevant value.
#      Other modify object itself, have side effects, save files, etc
puts "Ruby Monstas".delete("by Mo")
puts "Ruby Monstas".length

puts "Ruby Monstas".methods.sort

# methods can be “chained”
puts "Vijaya Aditya Tadepalli".prepend("Oh, hello, ").upcase

# predicate methods
#       methods that end with a question mark ?
#       By convention return either true or false
puts 5.odd?
puts 5.even?
puts 5.between?(1, 10)
puts 5.between?(11, 20)

# bang methods
#       which end in an exclamation mark !
#       often modify the object they are called on.
#       useless, use with caution

name = "Ruby Monstas"
puts name
puts name.downcase # returns
puts name
name.downcase! # modifies original
puts name

# Defining Class _________________ Calculator

class Calculator
  # Class names must start with an uppercase letter, and should use CamelCase.
  # Variable and methods names should use snake_case.
  def plus(number, other)
    number + other
  end

  def minus(number, other)
    number - other
  end

  def multiply(number, other)
    number * other
  end

  def divide(number, other)
    number.to_f / other
  end
end

Calculator.new
# The method new is defined on every class, and returns a new instance of the class.

p Calculator.new
# #<...> tells you that this object is not a simple thing
# Every object has its own, unique, internal object id

calculator = Calculator.new
puts calculator.class

puts calculator.is_a?(Calculator)

puts calculator.plus(2, 3)
puts calculator.minus(2, 3)
puts calculator.multiply(2, 3)
puts calculator.divide(2, 3)

# Defining Class _________________ Person
class Person
  def initialize(name)
    @name = name
  end

  def name
    # ATTRIBUTE READERS : Methods that return a value assigned to an instance variable with the same name.
    @name
  end

  def password=(password)
    # ATTRIBUTE WRITERS
    @password = password
  end

  def greet(other)
    puts "Hi #{other.name}! My name is #{name}." # can use 'name', '@name' and 'self.name'
    puts "Hi #{other.name}! My name is #{@name}."

    name = other.name # DON'T DO THIS!
    #    this will mask visibiliy of the object lvl scope's 'name' attr
    #    with local 'name' attr
    #    but incase you do, then use the below to access global scope

    puts "Hi #{name}! My name is #{self.name}."

    puts self.to_s
  end
end

person = Person.new("Ada")

puts person.name
puts person.password = "super secret"
p person

friend = Person.new("Carla")
person.greet(friend)
# friend.greet(person)
