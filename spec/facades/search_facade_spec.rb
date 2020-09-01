require 'rails_helper'

RSpec.describe 'SearchFacade' do
  before :each do
    @search = SearchFacade.new('Gryffindor')
  end

  it '#members' do
    actual = @search.get_members
    expect(actual).to be_an(Array)
  end
end
