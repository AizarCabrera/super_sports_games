require 'pry'

ages = [24, 30, 18, 20, 41]
# Your code here for calculating the standard deviation
#ages.sum
#puts ages.sum
sum = 0.00
ages.each do |age|
  sum += age
end

puts sum

ages.count
puts ages.count


total=sum/ages.count
puts total


substraction = []
ages.each do |age|
  substraction << (age-total).round(2)
# binding.pry

end

p substraction

square = []
substraction.each do |num|
square << (num**2).round(2)
end

p square

sum = 0.00
square.each do |x|
  sum += x
end

p sum.round(2)

puts (sum/ages.count).round(2)

puts (Math.sqrt(sum/ages.count)).round(2)
