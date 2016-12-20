require "rails_helper"

describe Product do

  before do
    @product = Product.create!( name: "card")
    @user = User.create!( email: "test@test.com", password: "testuser")
    @product.comments.create!( rating: 1, user: @user, body: "looks ok.")
    @product.comments.create!(rating: 3, user: @user, body: "cool")
    @product.comments.create!(rating: 5, user: @user, body: "Amazing!")
  end

  it "returns the average rating of all comments" do
    expect(@product.average_rating).to eq 3
  end

  it "is not valid" do
    expect(Product.new(description: "Nice bike")).not_to be_valid
  end

end
