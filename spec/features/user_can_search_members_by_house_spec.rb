require 'rails_helper'

RSpec.describe 'User can search for members by house' do
  it "When I visit the root path and select 'Gryffindor' from the select field,
    And I click 'Search For Members'
    I should be directed to '/search'
    And I should see the total number of order of pheonix members that belong to Gryffindor (21),
    And for each member I should see:
      - name of member
      - members role (if exists)
      - house member belongs to
      - patronus of member (if exists)" do

    visit '/'
    select 'Gryffindor', from: :house
    click_on 'Search For Members'
    expect(current_path).to eq(search_path)
    expect(page).to have_content('21 Results')
    expect(page).to have_css('.member', count: 21)

    within(first('.member')) do
      expect(page).to have_css('.name')
      name = find('.name').text
      expect(name).not_to be_empty

      expect(page).to have_css('.role')
      role = find('.role').text
      expect(role).not_to be_empty

      expect(page).to have_css('.house')
      house = find('.house').text
      expect(house).not_to be_empty

      expect(page).to have_css('.patronus')
      patronus = find('.patronus').text
      expect(patronus).not_to be_empty
    end
  end
end
