require 'rails_helper'

RSpec.describe Article, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  let(:user) { User.create(email: 'leevi@gmail.com', password: '123456', password_confirmation: '123456', username:"leevi") }
  let(:category) { Category.create(name: 'Drink', priority: 1) }
  let(:article) { Article.create(user_id: user.id, title:"Mike likes big cookies", text: "Big muscles like Mike", category_ids:[category.id]) }

  it "is not valid with invalid attributes" do
    expect(Article.new).not_to be_valid
  end

  it "is valid with valid attributes" do
    article.main_image.attach(io: File.open(Rails.root.join('spec', 'models', 'digitalnomad.jpeg')), filename: 'digitalnomad.jpeg', content_type: 'image/jpeg')
    expect(article).to be_valid
  end

  it 'is not valid without a title.' do
    Article.new(title:'', user_id: user.id, text: "Big muscles like Mike", category_ids:[category.id])
    expect(Article.new).not_to be_valid
  end

  it 'it not valid without a text' do
    Article.new(title:"Mike likes big cookies", user_id: user.id, category_ids:[category.id])
    expect(Article.new).not_to be_valid
  end

  it 'it not valid without a user' do
    Article.new(title:"Mike likes big cookies", user_id: nil, title:"Mike likes big cookies", text: "Big muscles like Mike", category_ids:[category.id])
    expect(Article.new).not_to be_valid
  end

  it 'it not valid without a category' do
    Article.new(title:"Mike likes big cookies", user_id: user.id, title:"Mike likes big cookies", text: "Big muscles like Mike", category_ids:nil)
    expect(Article.new).not_to be_valid
  end
end

