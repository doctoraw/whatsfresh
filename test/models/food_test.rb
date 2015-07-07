require "test_helper"

describe Food do
  let(:food) { Food.new }

  it "must be valid" do
    value(food).must_be :valid?
  end
end