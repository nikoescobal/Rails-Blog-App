require 'rails_helper'

RSpec.describe Article, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  let(:user) { User.create(email: 'levi@gmail.com', password: '123456', password_confirmation: '123456', username:"levi") }
  let(:category) { Category.create(name: 'Drink', priority: 1) }
  let(:article) { Article.create(user_id:1, title:"Mike likes big muscles", text: "Big muscles like Mike", category_ids:[category.id]) }


  it "is not valid with invalid attributes" do
    expect(Article.new).not_to be_valid
  end


  # let(:article) { Article.create(user_id:1, title:"Mike likes big cookies", text: "Big cookies like Mike" ) }
  it "is valid with valid attributes" do
    # main_image: File.open(File.join(Rails.root,'db','images','Event1.jpg'))
    article.main_image.attach(io: File.open(Rails.root.join('./digitalnomad.jpeg')))
    puts article.main_image
    expect(article).to be_valid
  end

end
