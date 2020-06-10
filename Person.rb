
load 'Car.rb'

class Person
    attr_accessor "first_name", "last_name", "cars", "money", "shoes", "age", "country"

    def buy_car(any_car)
        if self.money >= any_car.price
            puts "Congratulations for buying #{any_car.name} #{any_car.model}!"
            self.money -= any_car.price
            puts "You have #{self.money} left"
        else  
            puts "You don't have enough money."
        end
        
    end

    def donate (donation_money_integer)
        if self.money >= donation_money_integer
            puts "You donated successfully!"
            self.money = self.money - donation_money_integer
        else 
            puts "You are a luser coz you don't have money at all."
        end     
    end

    def beg ()
        money = [1, 2, 5, 10, 20, 100]
        # rand function returns a random index for the array not number
        index = rand (money.length)
        # index = 2

        puts "Somebody donated to you #{money [index]}"
        self.money = self.money + money [index]
        
    end

end

# car 1
car1 = Car.new
car1.name = "Mercedes"
car1.model = "GLE"
car1.color = "black"
car1.year = 2020
car1.maximum_speed = 200
car1.is_drivable = false
car1.price = 150000
car1.VIN = "4Y1SL65848Z411439"

# car 2
car2 = Car.new
car2.name = "Ferrari"
car2.model = "F50"
car2.color = "red"
car2.year = 2012
car2.maximum_speed = 300
car2.is_drivable = true
car2.price = 30000000
car2.VIN = "4Y5SA57821Z411421"

# person 1
person1 = Person.new
person1.first_name = "Porosenok"
person1.last_name = "Olaru"
person1.cars = []
person1.money = 1000000
person1.shoes = "slippers"
person1.age = 53
person1.country = "Azerbajan"

person1.buy_car(car1)
person1.buy_car(car2)

person1.donate(100)

person2 = Person.new
person2.first_name = "Homeless"
person2.money = 0
person2.beg()
puts person2.money

# if person has enough money
# display "You donated successfully!"
# substract donated money from wallet 

