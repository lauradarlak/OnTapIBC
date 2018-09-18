class OnTapIBC::Url

  def self.scrape_urls
    doc = Nokogiri::HTML(open("https://www.ithacabeer.com/beers/"))
    urls = []

    doc.search("div.intrinsic a").each do |url|
      urls << url.attribute("href").value
    end

    urls
  end


  def self.assign_urls
    scrape_urls.map do |url|
      if url.includes?("#{OnTapIBC::Beers.new.name.downcase.gsub!(/\s/, "")}")
        OnTapIBC::Beers.new[:url] = url
      end
    end
    binding.pry
  end
  self.assign_urls
  # array_of_urls.map do |url|
    # if url.includes?("#{OnTapIBC::Beers.new.name.downcase.gsub!(/\s/, "")}")
      # OnTapIBC::Beers.new[url:] = url
    # end
  # end

end
