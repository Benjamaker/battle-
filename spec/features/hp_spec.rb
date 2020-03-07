
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

feature 'players can die' do
  scenario "player will die when HP gets to zero" do
    sign_in_and_play
    10.times { attack_cycle }
    click_link "Attack"
    expect(page).to have_content("You killed Sri!")
  end
end
