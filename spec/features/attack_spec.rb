feature 'attack' do
  scenario "player 1 can attack player 2" do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Ben attacked Sri'
  end

  scenario "player 2 can attack player 1" do
    sign_in_and_play
    click_link 'Attack'
    click_button 'OK'
    click_link 'Attack'
    expect(page).to have_content 'Sri attacked Ben'
  end
end
