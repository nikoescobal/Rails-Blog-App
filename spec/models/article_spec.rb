require 'rails_helper'

RSpec.describe Article, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  let(:user) { User.create(email: 'leevi@gmail.com', password: '123456', password_confirmation: '123456', username:"leevi") }
  let(:category) { Category.create(name: 'Drink', priority: 1) }
  let(:article) { Article.create(user_id: user.id, title:"Mike likes big muscles", text: "Big muscles like Mike", category_ids:[category.id]) }

  it "is not valid with invalid attributes" do
    expect(Article.new).not_to be_valid
  end

  it "is valid with valid attributes" do
    article.main_image.attach(io: File.open(Rails.root.join('spec', 'models', 'digitalnomad.jpeg')), filename: 'digitalnomad.jpeg', content_type: 'image/jpeg')
    expect(article).to be_valid
  end

  

end