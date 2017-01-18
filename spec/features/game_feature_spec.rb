require 'rails_helper'

feature 'Game ' do
  before do
    City.create(name: 'London')
    Adventure.create(name: "Jack the Ripper", city_id:1)
  end
  context 'User can choose their city to start an adventure' do
    scenario 'it should show the form to choose cities' do
      sign_up('Asuka', 'test@email', 'password')
      expect(page).to have_content('Choose city')
      select 'London', from: 'cities_from_model'
      click_button "Submit"
      expect(page).to have_content 'Jack the Ripper'
    end
  end
end
