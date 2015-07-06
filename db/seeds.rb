# This file seeds the database with the initial data required.
# OPTIMIZE: Make this for any number of countries from a JSON file.

countries = [
     ["United States", "US"]
]

countries.each do |country|
  c = Country.new(:name => country[0], :code => country[1])
  c.save!
end

us = [
     ["Alabama","AL"],
     ["Alaska","AK"],
     ["Arizona","AZ"],
     ["Arkansas","AR"],
     ["California","CA"],
     ["Colorado","CO"],
     ["Connecticut","CT"],
     ["Delaware","DE"],
     ["District of Columbia","DC"],
     ["Florida","FL"],
     ["Georgia","GA"],
     ["Hawaii","HI"],
     ["Idaho","ID"],
     ["Illinois","IL"],
     ["Indiana","IN"],
     ["Iowa","IA"],
     ["Kansas","KS"],
     ["Kentucky","KY"],
     ["Louisiana","LA"],
     ["Maine","ME"],
     ["Montana","MT"],
     ["Nebraska","NE"],
     ["Nevada","NV"],
     ["New Hampshire","NH"],
     ["New Jersey","NJ"],
     ["New Mexico","NM"],
     ["New York","NY"],
     ["North Carolina","NC"],
     ["North Dakota","ND"],
     ["Ohio","OH"],
     ["Oklahoma","OK"],
     ["Oregon","OR"],
     ["Maryland","MD"],
     ["Massachusetts","MA"],
     ["Michigan","MI"],
     ["Minnesota","MN"],
     ["Mississippi","MS"],
     ["Missouri","MO"],
     ["Pennsylvania","PA"],
     ["Rhode Island","RI"],
     ["South Carolina","SC"],
     ["South Dakota","SD"],
     ["Tennessee","TN"],
     ["Texas","TX"],
     ["Utah","UT"],
     ["Vermont","VT"],
     ["Virginia","VA"],
     ["Washington","WA"],
     ["West Virginia","WV"],
     ["Wisconsin","WI"],
     ["Wyoming","WY"]
]

us.each do |state|
  country_id = Country.where('name = ?', 'United States').first.id
  state = State.new(:name => state[0], :code => state[1], :country_id => country_id)
  state.save!
end
