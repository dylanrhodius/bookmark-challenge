feature 'User sign in' do

  scenario 'User can sign in' do
      sign_up
      sign_in
      expect(page).to have_content('Welcome, alice@example.com')
  end



end
