desc "populate database with fake apartment data"
task :populate => :environment do
  Apartment.new({
    :name => "Thornberry Woods",
    :beds => 1,
    :baths => 1,
    :rent => 1120,
    :address => "7501 Gladstone Drive"
  }).save
  Apartment.new({
    :name => "Summit Pointe",
    :beds => 2,
    :baths => 1,
    :rent => 1050,
    :address => "108 Summit Pointe Drive"
  }).save
  Apartment.new({
    :name => "The Residences at Vinings Mountain",
    :beds => 3,
    :baths => 2,
    :rent => 3357,
    :address => "100 Pinhurst Dr"
  }).save
end