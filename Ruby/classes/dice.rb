class Dice
    attr_reader :sides, :value

    def initialize(sides = 6)
        if sides < 1
            raise ArgumentError, "Sides must be greater than 0"
        end
        @sides = sides
    end

    def roll
        @value = rand(sides) + 1
    end
end