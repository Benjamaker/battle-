
feature 'player hit points' do
  scenario "display player hit points" do
    sign_in_and_play
    expect(page).to have_content 'Sri: 60HP'
  end
end

feature 'attack does damage' do
  scenario "player 2's hit points are reduced when attacked by player 1" do
    sign_in_and_play
    click_link 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'Sri: 60HP'
    expect(page).to have_content 'Sri: 50HP'
  end
end
