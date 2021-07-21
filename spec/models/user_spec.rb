require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) do
    User.create(email: 'leeevi@gmail.com', password: '123456', password_confirmation: '123456', username: 'leeevi')
  end
  let(:articles) { User.reflect_on_association(:articles).macro }
  let(:categories) { Article.reflect_on_association(:categories).macro }

  it 'is valid with valid attributes' do
    expect(user).to be_valid
  end

  it 'checks correct association with articles' do
    expect(articles).to eq(:has_many)
  end

  it 'checks correct association with categories' do
    expect(categories).to eq(:has_many)
  end

  it 'is not valid without email' do
    user.email = nil
    expect(user).to_not be_valid
  end

  it 'is not valid without password' do
    user.password = ''
    expect(user).to_not be_valid
  end
end
