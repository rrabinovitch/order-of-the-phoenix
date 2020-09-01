class SearchFacade
  def initialize(house)
    @house = house
    @hp_service ||= HPService.new
  end

  def members
    members_info = @hp_service.members_by_house(@house)
    
  end
end
