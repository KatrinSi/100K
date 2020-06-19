

class Human

  #attributes
  attr_accessor :name, :age
  #methods
  def initialize(name, age)
    @name = name
    @age = age
  end

  def run
    @age = @age + 1
    puts "I am a #{@name}, and I am #{@age - 5} years old and I am running fast!!"
    @age = @age * 2
  end


end

human1 = Human.new("Woman", 23)
human2 = Human.new("Man", 35)
#puts human1.run
#puts human1.name
#puts human2.name
#puts human1.age

#human1.name = "Cornel"
#puts human1.name
#human2.name = human1.name
#puts human2.name

human2.age = human1.age - 30 
puts human2.age
puts human2.run
puts human2.age