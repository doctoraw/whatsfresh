# This file seeds the database with the initial data required.

require 'json'
countries = File.read(File.dirname(__FILE__) + '/countries.json')
countries = JSON.parse(countries)

countries.each do |c|
  country = Country.create(:name => c[0], :code => c[1]['code'])
  c[1]['states'].each do |s|
    State.create(:name => s[0], :code => s[1], :country_id => country.id)
  end
end