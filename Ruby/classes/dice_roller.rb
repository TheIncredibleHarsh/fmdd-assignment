require_relative 'dice'

class DiceRoller
    attr_reader :dice_list, :value

    def initialize(input_string = "1d6")
        @dice_list = []
        input_string.split.each do |die|
            count, sides = die.split("d").map(&:to_i)
            count.times do
                @dice_list << Dice.new(sides.to_i)
            end
        end
    end

    def roll
        @value = 0
        @dice_list.each do |die|
            @value += die.roll
        end
        self
    end
end