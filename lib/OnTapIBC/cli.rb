class OnTapIBC::CLI

  def start
    list_beers
  end

  # def list_beers
  #   puts "What's on tap at Ithaca Beer Company"
  #   puts "#{OnTapIBC::Taps.updated_last}"
  #   beers_array = OnTapIBC::Taps.current_list
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
    five = []
    nofive = []
    beers_array.each do |beer|
      beer.short_desc.include?("5BBL") ? five << beer : nofive << beer
    end
    puts "Flagship and Seasonal Beers"
    nofive.map.with_index(1) do |beer, index|
      puts "#{index}. #{beer.name} - #{beer.abv}"
    end
    puts "----------------------------"
    puts "5 Barrel Brews"
    five.map.with_index(1) do |beer, index|
        puts "#{index}. #{beer.name} - #{beer.abv}"
    end

  end

end
