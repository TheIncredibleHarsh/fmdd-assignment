require_relative 'classes/dice_roller'

puts "Enter a roll string, e.g. 1d10 2d6 for 1 die of 10 sides and 2 dice of 6 sides"
input_string = gets.chomp
roller = DiceRoller.new(input_string)
puts "Rolling \"#{input_string}\""
roll =  roller.roll
puts "Roll value: #{roll.value}"
puts "Dice rolled:-"
roll.dice_list.each do |die|
    puts "Sides: #{die.sides}, Value: #{die.value}" 
end