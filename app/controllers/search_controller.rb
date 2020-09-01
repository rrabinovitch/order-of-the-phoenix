class SearchController < ApplicationController
  def index
    house = params[:house]

    conn = Faraday.new(url: 'https://www.potterapi.com/v1/characters') do |f|
      f.params['key'] = ENV['HP-API-KEY']
    end

    response = conn.get("/characters?key=#{ENV['HP-API-KEY']}&house=#{house}&orderOfThePhoenix=true")

    members_info = JSON.parse(response.body, symbolize_names: true)
    binding.pry
    # @members = members_info
  end
end
