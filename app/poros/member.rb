class Member
  def initialize(member_data)
    @name = member_data[:name]
    @role = member_data[:role]
    @house = member_data[:house]
    @patronus = member_data[:patronus]
  end
end
