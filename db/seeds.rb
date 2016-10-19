# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(:name => "Birthday card", :description => "dementions", :image_url => "birthday.jpg", :colour => "purple")
Product.create(:name => "Winnie the Pooh", :description => "dementions", :image_url => "winne.jpg", :colour => "yellow")
Product.create(:name => "Lady in Pink", :description => "dementions", :image_url => "lady.jpg", :colour => "pink")
Product.create(:name => "Mens On your Special Day", :description => "dementions", :image_url => "train.jpg", :colour => "brown")
