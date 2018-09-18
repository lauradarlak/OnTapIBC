class OnTapIBC::Beers
  attr_accessor :name, :abv, :short_desc, :url, :hops

  @@all = []

  def initialize(beers_hash)
    beers_hash.each {|key, value| self.send(("#{key}="), value)}
    @@all << self
  end

  def self.create_from_scrape(beers_array)
    beers_array.each {|beer| self.new(beer)}
  end

  def self.all
    @@all
  end
end

# find all links with ithaca-beer/
# iterate through each instance of a beer
  # if the Object.new.name appears in the link
  # add key/value to object
