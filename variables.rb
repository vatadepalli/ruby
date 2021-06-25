# ________________________________________________________
#                   GLOBAL VARIABLES
# ________________________________________________________
# * begin with "$"
# * can be accessed from anywhere in a program.
# * No need to initialize - Uninitialized global variables
#                           have the value - nil.
# _______________________________________________________

$global_var = "GLOBAL"
non_global_var = "NON-GLOBAL"

def method1
  puts "Global variable is #$global_var"
end

def method2
  puts "Non-global variable is ", non_global_var
end

method1
# method2

# ________________________________________________________
#                   LOCAL VARIABLES
# ________________________________________________________
# * begin with "lowercase letters" / "_"
# * block scoped (class, module, def)
# * No need to initialize - An uninitialized local variable
#               is interpreted as method swith no arguments.
# ________________________________________________________
# aside - need to have spaces around operators
puts number = 1

number = 1
puts number

number = number * 3
puts number + 2

var = "Hello World"

def foo
  var = 1.5
  puts "Value of var in foo : ", var
end

foo
puts "Value of var outside 'foo' method:", var

# ________________________________________________________
#                   INSTANCE VARIABLES
# ________________________________________________________
# * begin with "@"
# * limited to one instance of a class
# * No need to initialize - Uninitialized instance variables
#                           have the value - nil.
# _______________________________________________________

class Employee
  def initialize(name)
    @employee_name = name
  end

  def print()
    puts "Employee name: #@employee_name"
  end
end

# Create Objects
e1 = Employee.new("Emma")
e2 = Employee.new("David")
e3 = Employee.new("Harris")

# Call Methods
e1.print()
e2.print()
e3.print()

# ________________________________________________________
#                   CLASS VARIABLES
# ________________________________________________________
# * begin with "@@"
# * limited to class
# * NEED to initialize - Uninitialized instance variables
#                           result in error.
# ________________________________________________________

class Employee
  @@no_of_employees = 0

  def initialize(name)
    @employee_name = name
    @@no_of_employees += 1
  end

  def total_no_of_employees()
    puts "Total number of employees: #@@no_of_employees"
  end
end

# Create Objects
e1 = Employee.new("Emma")
e2 = Employee.new("David")
e3 = Employee.new("Harris")

# Call Methods
e1.total_no_of_employees()
e2.total_no_of_employees()
e3.total_no_of_employees()
