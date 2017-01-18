require 'rails_helper'


feature 'stories' do
  context 'Visiting story profile page' do
    before do
      sign_up('Tudor', 'tudor@email.com', '123456')
      @user = User.first
      City.create(name: "London")
      @city = City.first
      Adventure.create(name: 'Jack the Riper', city_id: @city.id)
      @adventure = Adventure.first
      @story = Story.create(adventure_id: @adventure.id, description: "Starting your Jack the Ripper adventure", image_url: "http://littleatoms.com/sites/default/files/2015/jack_the_ripper_museum/jack-the-ripper-mitre-square.png", location: "co-ordinates")
      @next_story = Story.create(adventure_id: @adventure.id, description: "Visit the Jack the Ripper Museum", image_url: "http://i.huffpost.com/gen/3577686/thumbs/o-JACK-THE-RIPPER-MUSEUM-570.jpg", location: "E1 6LT")
      @choice = Choice.create(description: "Play it safe", next_story_id: @next_story.id, story_id: @story.id)
      Game.create(user_id: @user_id, adventure_id: @adventure.id)
      @game = Game.first
    end

    scenario 'When we visit story page it should display a title, description and choices' do
      visit("/story/1")
      expect(page).to have_content("Starting your Jack the Ripper adventure")
      expect(page).to have_content("http://littleatoms.com/sites/default/files/2015/jack_the_ripper_museum/jack-the-ripper-mitre-square.png")
      expect(page).to have_content("co-ordinates")
      click_button("Play it safe")
      expect(current_path).to eq '/story/2'
    end
  end
end
