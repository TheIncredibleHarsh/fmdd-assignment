require_relative '../classes/dice'

RSpec.describe "Dice" do
    it "should be able to roll a single die" do
        die = Dice.new
        expect(die.roll).to be_between(1, 6)
    end

    it "should roll dice of different sides" do
        die = Dice.new(10)
        expect(die.roll).to be_between(1, 10)
        die = Dice.new(20)
        expect(die.roll).to be_between(1, 20)
        die = Dice.new(3)
        expect(die.roll).to be_between(1, 3)   
    end

    it "should roll die of 6 sides by default" do
        die = Dice.new
        expect(die.roll).to be_between(1, 6)
    end
end