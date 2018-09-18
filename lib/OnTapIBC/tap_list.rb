class OnTapIBC::Taps
  attr_accessor :name, :abv, :short_desc

  def self.updated_list
    self.scrape_menu
  end

  # def self.scrape_menu
  #   doc = Nokogiri::HTML(open("https://www.ithacabeer.com/taproom-menu/#anchor-tap-list"))
  #   beers = []
  #
  #   doc.search("div#block-yui_3_17_2_8_1508769314339_15193 div.menu-items div.menu-item").each do |beer|
  #     beers << {
  #       name: beer.css("div.menu-item-title").text.strip,
  #       abv: beer.css("span.menu-item-price-top").text.strip,
  #       short_desc: beer.css("div.menu-item-description").text.strip
  #     }
  #   end
  #
  #
  #   beers
  # end

  def self.scrape_menu
    doc = Nokogiri::HTML(open("https://www.ithacabeer.com/taproom-menu/#anchor-tap-list"))
    beer_list = []
    beers = doc.search("div#block-yui_3_17_2_8_1508769314339_15193 div.menu-items div.menu-item")
    beers.each do |beer|
      new_beer = OnTapIBC::Taps.new # create beer instance
      new_beer.name = beer.css("div.menu-item-title").text.strip # assign beer name
      new_beer.abv = beer.css("span.menu-item-price-top").text.strip # assign ABV
      new_beer.short_desc = beer.css("div.menu-item-description").text.strip # assign short description
      beer_list << new_beer
    end

  end

end
