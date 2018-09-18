class OnTapIBC::CLI

  def start
    list_beers
  end

  # def list_beers
  #   puts "What's on tap at Ithaca Beer Company"
  #   puts "Updated on Sep 14, 4:46 PM EDT"
  #   beers_array = OnTapIBC::Taps.updated_list
  #   beers_array.map.with_index(1) do |beer, index|
  #     if !beer.short_desc.include?("5BBL")
  #       puts "#{index}. #{beer.name} - #{beer.abv}"
  #       puts "----------------------------"
  #     else
  #       puts "5 Barrel Brews:"
  #       puts "#{index}. #{beer.name} - #{beer.abv}"
  #     end
  #   end
  # end

  def list_beers
    puts "What's on tap at Ithaca Beer Company"
    puts "#{OnTapIBC::Taps.updated_last}"

    beers_array = OnTapIBC::Taps.current_list
    bbl = []
    not_bbl = []
    beers_array.each do |beer|
      if beer.short_desc.include?("5BBL")
        bbl << beer
      else
        not_bbl << beer
      end

    end


  end

end
