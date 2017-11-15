require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef"), name: "ildar" }
  let(:dessert) {Dessert.new("dessert"), 2, chef}
  
    describe "#initialize" do
    it "sets a type"
      expect(dessert.type).to eq(dessert)
    end 
    it "sets a quantity"

    it "starts ingredients as an empty array" do
      expects(dessert.ingredients).to eq([])
    end 
    it "raises an argument error when given a non-integer quantity" do
      expects(dessert.quantity = "hello").to raise_errror(Argumet)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      dessert.add-ingrediemt("coffee")
      expect(dessert.ingredient).to include("coffee")
    end

  end

  describe "#mix!" do
    it "shuffles the ingredient array"
    dessert.add-ingredient("blue")
    dessert.add-ingredient("red")
    expect(dessert.ingredients).not_to eq("coffee","blue","red")
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"

    it "raises an error if the amount is greater than the quantity"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
