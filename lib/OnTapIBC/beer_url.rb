# class OnTapIBC::Url
#
#   def self.scrape_urls
#     doc = Nokogiri::HTML(open("https://www.ithacabeer.com/beers/"))
#     urls = []
#
#     doc.search("div.intrinsic a").each do |url|
#       urls << url.attribute("href").value
#     end
#
#     urls
#   end
#
#   def self.lowercase
#     OnTapIBC::Taps.current_list.each do |beer|
#       l = beer.name.downcase.gsub!(/\s/, "")
#     end
#   end
#
#
#   def self.assign_urls
#     scrape_urls.map do |url|
#       if url.include?("#{self.lowercase}")
#         OnTapIBC::Taps.new.url = url
#       end
#     end
#     binding.pry
#     OnTapIBC::Taps.new.url
#   end
#   self.assign_urls
#
# end
