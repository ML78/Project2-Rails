class EventsController < ApplicationController
  def index
   require 'open-uri'
   base_url = 'http://www.ecoshout.org.au/events/green-environmental-social-justice'
   @ecoexpo = Nokogiri::HTML(open(base_url)).css('.views-row') # [0].text
   # @ecoexpo = Nokogiri::HTML(open(base_url)).css('.views-row div')
   # @ecoexpo = Nokogiri::HTML(open(base_url)).css('.views-row')]
   # page2
  end
end

# page2 = Nokogiri::HTML(open("http://www.ecoshout.org.au/events/green-environmental-social-justice"))
# page2.css('.views-row')
