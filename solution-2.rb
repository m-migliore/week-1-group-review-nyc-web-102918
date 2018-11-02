# Finish the implementation of the Car class so it has the functionality described below
require "pry"
class Car
  attr_accessor :make, :model

  @@all =[]

  def initialize(car)
    @make = car[:make]
    @model = car[:model]
  end

  def drive
    "VROOOOOOOOOOOOM!"
  end

  def self.all
    @@all
  end

end


# car.drive
# => "VROOOOOOOOOOOOM!"
car = {
  make: "Volvo",
  model: "Lightning"
}

volvo_lightning = Car.new(car)

binding.pry

Car.all
