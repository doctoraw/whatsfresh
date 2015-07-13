require "test_helper"

describe Food do

  it "must be created" do
    Food.count.must_be :==, 3
    Food.create(name:        'Avocado', 
                description: 'The avocado is a tree native to Mexico and Central America.',
                links:       'https://en.wikipedia.org/wiki/Avocado')
    Food.count.must_be :==, 4
  end
  
  it "must have a name" do
    Food.first.name.must_be :==, 'Potato'
    Food.create(name:        nil, 
                description: 'The avocado is a tree native to Mexico and Central America.',
                links:       'https://en.wikipedia.org/wiki/Avocado')
    Food.count.must_be :==, 3
  end
  
  it "must have a unique name" do
    Food.create(name:        'Potato', 
                description: 'The potato is a starchy, tuberous crop from the perennial nightshade Solanum tuberosum.',
                links:       'https://en.wikipedia.org/wiki/Potato')
    Food.count.must_be :==, 3
  end
  
  it "may or may not have a description" do
    Food.create(name:        'Avocado', 
                description: 'The avocado (Persea americana) is a tree native to Mexico and Central America.',
                links:       'https://en.wikipedia.org/wiki/Avocado')
    Food.create(name:        'Zucchini', 
                description: nil,
                links:       'https://en.wikipedia.org/wiki/Zucchini')
    Food.count.must_be :==, 5
  end
  
  it "may or may not have links" do
    Food.create(name:        'Avocado', 
                description: 'The avocado is a tree native to Mexico and Central America.',
                links:       'https://en.wikipedia.org/wiki/Avocado')
    Food.create(name:        'Zucchini', 
                description: 'Zucchini is a summer squash which can reach nearly a meter in length.',
                links:       nil)
    Food.count.must_be :==, 5
  end

end