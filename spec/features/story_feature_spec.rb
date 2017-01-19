require 'rails_helper'


feature 'stories' do

  context 'Visiting the index page' do

    before do
      sign_up('Tudor', 'tudor@email.com', '123456')
    end

    scenario "i want to see a start adventure button" do
      visit '/'
      expect(page).to have_content 'Start adventure'
    end
  end

  context 'Clicking start adventure' do
    before do
      sign_up('Tudor', 'tudor@email.com', '123456')
      Story.create(adventure_id: 1, description: "Starting your Jack the Ripper adventure", image_url: "http://littleatoms.com/sites/default/files/2015/jack_the_ripper_museum/jack-the-ripper-mitre-square.png", location: "co-ordinates")
    end
    scenario 'i want to see the first story' do
      click_link 'Start adventure'
      expect(page).to have_current_path('/story/1')
    end
  end
  context 'Visiting story profile page' do
    before do
      sign_up('Tudor', 'tudor@email.com', '123456')
      @story = Story.create(description: "Starting your Jack the Ripper adventure", image_url: "http://littleatoms.com/sites/default/files/2015/jack_the_ripper_museum/jack-the-ripper-mitre-square.png", location: "co-ordinates")
      @next_story = Story.create(description: "Visit the Jack the Ripper Museum", image_url: "http://i.huffpost.com/gen/3577686/thumbs/o-JACK-THE-RIPPER-MUSEUM-570.jpg", location: "E1 6LT")
      @choice = Choice.create(description: "Play it safe", next_story_id: 1, story_id: 1)
    end

    scenario 'When we visit story page it should display a title, description and choices' do
      visit("/story/1")
      click_button "I've arrived"
      expect(page).to have_content("Starting your Jack the Ripper adventure")
      expect(page).to have_content("http://littleatoms.com/sites/default/files/2015/jack_the_ripper_museum/jack-the-ripper-mitre-square.png")
      expect(page).to have_content("co-ordinates")
      click_button("Play it safe")
      expect(current_path).to eq '/story/2'
    end
  end
end
