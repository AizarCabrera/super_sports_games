require 'pry'

class Event

  attr_reader :name, :ages

  def initialize(name, ages)
    @name = name
    @ages  = ages
  end

  def max_age
    @ages.max
    #binding.pry
  end


  def min_age
    @ages.min
  end


  def average_age
    (@ages.sum.to_f/@ages.count).round(2)
  end

  def standard_deviation_age

  def average_age
    average_age =(@ages.sum.to_f/@ages.count)
  end

    substraction = []
    @ages.each do |age|
    substraction << (age - average_age)
  # binding.pry
  end
  #p substraction

    square = []
    substraction.each do |num|
    square << (num**2)
  end
  #p square

    sum = 0.00
    square.each do |x|
    sum += x
  end

    Math.sqrt(sum/@ages.count).round(2)
  end
  #binding.pry
end




event = Event.new("Curling", [24, 30, 18, 20, 41])

puts event.max_age
puts event.min_age
puts event.average_age
puts event.standard_deviation_age
