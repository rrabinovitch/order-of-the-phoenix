class SearchController < ApplicationController
  def index
    house = params[:house]
    search = SearchFacade.new(house)
    @members = search.members
    # conn = Faraday.new(url: 'https://www.potterapi.com/v1/characters')
    #
    # response = conn.get("?key=#{ENV['HP-API-KEY']}&house=#{house}&orderOfThePhoenix=true")
    #
    # @members = JSON.parse(response.body, symbolize_names: true)
  end
end
