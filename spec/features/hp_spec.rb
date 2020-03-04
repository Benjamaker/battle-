
feature 'player hit points' do
  scenario "display player hit points" do
    sign_in_and_play
    expect(page).to have_content 'Sri: 60HP'
  end
end
