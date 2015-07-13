require "test_helper"

describe State do

  it "must be created" do
    State.count.must_be :==, 3
    State.create(name: 'Comunidad de Madrid', code: 'MD', country_id: 1)
    State.count.must_be :==, 4
  end
  
  it "must have a name" do
    State.first.name.must_be :==, 'Montana'
    State.create(name: nil, code: 'NI', country_id: 1)
    State.count.must_be :==, 3
  end

  it "must have a unique name" do
    State.create(name: 'Montana', code: 'NI', country_id: 1)
    State.count.must_be :==, 3
  end
 
  it "must have a code" do
    State.first.code.must_be :==, 'MO'
    State.create(name: 'Null Island', code: nil, country_id: 1)
    State.count.must_be :==, 3
  end
 
  it "must have a unique code" do
    State.create(name: 'Null Island', code: 'MO', country_id: 1)
    State.count.must_be :==, 3
  end

  it "must have a valid code" do
    State.create(name: 'Null Island', code: 'N', country_id: 1)
    State.create(name: 'Null Island', code: 'NI', country_id: 1)
    State.create(name: 'Null Island', code: 'NIL', country_id: 1)
    State.count.must_be :==, 4
  end

  it "must have name and code" do
    State.create(name: nil, code: nil, country_id: 1)
    State.count.must_be :==, 3
  end

end