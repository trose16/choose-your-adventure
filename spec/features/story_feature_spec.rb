require 'rails_helper'


feature 'stories' do
  context 'Visiting story profile page' do
    before do
      sign_up('Tudor', 'tudor@email.com', '123456')
      @user = User.first
      City.create(name: "London")
      @city = City.first
      Adventure.create(name: 'Jack the Ripper', city_id: @city.id)
      @adventure = Adventure.first
      @story_1 = Story.create(adventure_id: 1, description: "Starting your Jack the Ripper adventure", image_url: "http://littleatoms.com/sites/default/files/2015/jack_the_ripper_museum/jack-the-ripper-mitre-square.png", location: "co-ordinates")
      @story_2 = Story.create(adventure_id: 1, description: "Visit Jack the ripper museum", image_url: "http://i.dailymail.co.uk/i/pix/2014/12/26/24447B7600000578-2887645-image-a-2_1419601431679.jpg", location: "co-ordinates")
      Game.create(user_id: @user_id, adventure_id: @adventure.id)
      @game = Game.first
      Choice.create(description: "Play it safe", next_story_id: @story_2.id, story_id: @story_1.id )
      byebug
    end

    scenario 'When we visit story page it should display a title, description and choices' do
      visit("/story/1")
      expect(page).to have_content("Starting your Jack the Ripper adventure")
      expect(page).to have_content("http://littleatoms.com/sites/default/files/2015/jack_the_ripper_museum/jack-the-ripper-mitre-square.png")
      expect(page).to have_content("co-ordinates")
    end
  end
end
