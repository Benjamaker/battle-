feature 'player names' do
  scenario "allows players to enter their names" do
    visit('/')
    fill_in :player_1_name, with: 'Ben'
    fill_in :player_2_name, with: 'Sri'
    click_button 'Submit'
    expect(page).to have_content 'Ben vs. Sri'
  end
end
