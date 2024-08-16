require_relative '../classes/dice_roller'

RSpec.describe "Roll" do
    it "should be able to roll a single die" do
        roller = DiceRoller.new("1d6")
        expect(roller.roll.value).to be_between(1, 6)
    end

    it "should roll dice of different sides" do
        roller = DiceRoller.new("1d10 2d8")
        expect(roller.roll.value).to be_between(3, 26)
    end

    it "should roll die of 6 sides by default" do
        roller = DiceRoller.new()
        expect(roller.roll.value).to be_between(1, 6)
    end

    # Checking randomness of 3 rolls cuz 2 rolls can be the same by 
    # mere chance but probably not 3 times in a row
    it "should roll random values" do
        roller = DiceRoller.new("1d10 2d8")
        value1 = roller.roll.value
        value2 = roller.roll.value
        value3 = roller.roll.value
        expect((value1+value2+value3)/3).not_to eq(value1)
    end
end