class SearchController < ApplicationController
  def index
    house = params[:house]

    conn = Faraday.new(url: 'https://www.potterapi.com/v1/characters')

    response = conn.get("?key=#{ENV['HP-API-KEY']}&house=#{house}&orderOfThePhoenix=true")

    members_info = JSON.parse(response.body, symbolize_names: true)
    binding.pry
    # @members = members_info
  end
end
