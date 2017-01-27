feature 'User sign up' do

  scenario 'I can sign up as a new user' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content('Welcome, alice@example.com')
    expect(User.first.email).to eq('alice@example.com')
  end

  scenario 'wrong password confirmation raises error' do
    wrong_sign_up
    expect { wrong_sign_up }.not_to change(User, :count)
  end

end
