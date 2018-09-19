class OnTapIBC::Beer
  attr_accessor :name, :abv, :short_desc, :url

  @@all = []

  def self.all
    @@all
  end

  def self.save
    @@all << self
  end
end
