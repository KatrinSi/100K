class Car 
    attr_accessor "name", "model", "color", "year", "maximum_speed", "is_drivable", "price", "VIN"

    def drive(city1, city2, speed)
        if self.is_drivable and speed < self.maximum_speed
            puts "Trip from #{city1} to #{city2} complete"
        elsif !self.is_drivable
            puts "Can't drive to the destination because the car is broken."
        elsif speed > self.maximum_speed
            puts "Your maximum speed reached, drive slower."
        end
    end 

    
end