feature 'player names' do
  scenario "allows players to enter their names" do
    sign_in_and_play
    expect(page).to have_content 'Ben vs. Sri'
  end
end
