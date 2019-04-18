feature 'Attack' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Dave attacked Mittens'
  end

  scenario 'player 2 HP reduced' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Mittens: 50 HP'
  end
end
