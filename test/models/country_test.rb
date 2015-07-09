require "test_helper"

describe Country do

  it "must be created" do
    Country.count.must_be :==, 1
    Country.create(name: 'Spain', code: 'ES')
    Country.count.must_be :==, 2
  end
  
  it "must have a name" do
    Country.first.name.must_be :==, 'United States'
    Country.create(name: nil, code: 'NI')
    Country.count.must_be :==, 1
  end
  
  it "must have a code" do
    Country.first.code.must_be :==, 'US'
    Country.create(name: 'Null Island', code: nil)
    Country.count.must_be :==, 1
  end
  
  it "must have name and code" do
    Country.create(name: nil, code: nil)
    Country.count.must_be :==, 1
  end  
  
  it "must have a unique name" do
    Country.create(name: 'United States', code: 'NI')
    Country.count.must_be :==, 1
  end
  
  it "must have a unique code" do
    Country.create(name: 'Null Island', code: 'US')
    Country.count.must_be :==, 1
  end
  
  it "must have a valid code" do
    Country.create(name: 'Null Island', code: 'N')
    Country.create(name: 'Null Island', code: 'NI')
    Country.create(name: 'Null Island', code: 'NIL')
    Country.count.must_be :==, 2
  end

end