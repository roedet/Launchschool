require 'pry'       # <= add this to use pry
require 'yaml'

MESSAGES = YAML.load_file('pry_messages.yml')
puts MESSAGES.inspect

class Car
  attr_accessor :brand, :model

  def initialize(new_car)
    brand = new_car.split(' ').first
    model = new_car.split(' ').last

  end

end

betty = Car.new('Ford Mustang')
#betty.model.start_with?('M')