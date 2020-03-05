feature "Switching turns" do

  context 'seeing the current turn' do

    scenario "Player 2 attacks player 1 on a second turn" do
    sign_in_and_play
    expect(page).to have_content("Ben's turn")
    end

    scenario "after player 1 attacks" do
    sign_in_and_play
    click_link 'Attack'
    click_link 'OK'
    expect(page).not_to have_content("Ben's turn")
    expect(page).to have_content("Sri's turn")  
    end
  end
end
