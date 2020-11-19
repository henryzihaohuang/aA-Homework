require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Henry") }
  let(:souffle) { Dessert.new("souffle", 350, chef)}


  describe "#initialize" do
    it "sets a type" do
      expect(souffle.type).to eq("souffle")
    end
  end

    it "sets a quantity" do
      expect(souffle.quantity).to eq(100)
    end

    it "starts ingredients as an empty array" do
      expect(souffle.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new ("cookies", "Tom", chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      souffle.add_ingredient("eggs")
      expect(souffle.ingredients).to include("eggs")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = ["eggs", "flour", "sugar", "butter"]

      ingredients.each {|ingredient| brownie.add_ingredient(ingredient) }

      expect(brownie.ingredients).not_to eq(ingredients)
      expect(brownie.ingredients.sort).to eq(ingredients.sort)
    end
  end


  
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      souffle.eat(10)
      expect(souffle.quantity).to eq(90)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { souffle.eat(140)}.to raise_error("Not enough of the desserts!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef.name).to receive(:titleize). and_return("Chef Henry")
      expect(souffle.serve).to eq("Chef Henry has made 100 souffles!")
    end

  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
    expect(chef).to receive (:bake).with(souffle)
    souffle.make_more
  end
end
