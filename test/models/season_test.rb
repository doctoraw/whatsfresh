require "test_helper"

describe Season do
  let(:season) { Season.new }

  it "must be valid" do
    value(season).must_be :valid?
  end
end