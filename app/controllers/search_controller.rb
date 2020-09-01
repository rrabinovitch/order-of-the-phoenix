class SearchController < ApplicationController
  def index
    house = params[:house]
    search = SearchFacade.new(house)
    @members = search.members
  end
end
