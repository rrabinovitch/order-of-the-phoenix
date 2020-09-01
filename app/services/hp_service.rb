class HPService
  def members_by_house(house)
    response = response = conn.get("?key=#{ENV['HP-API-KEY']}&house=#{house}&orderOfThePhoenix=true")
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def conn
    Faraday.new(url: 'https://www.potterapi.com/v1/characters')
  end
end
