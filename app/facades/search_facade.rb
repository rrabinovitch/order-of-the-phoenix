class SearchFacade
  def initialize(house)
    @house = house
    @hp_service ||= HPService.new
  end

  def members
    members_data = @hp_service.members_by_house(@house)
    members_data.map do |member_data|
      Member.new(member_data)
    end
  end
end
