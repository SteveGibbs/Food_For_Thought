# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Donation.destroy_all
d1 = Donation.create donation_name: 'fresh and canned food', quantity: 10, donation_desc1: 'A mixed combination of fresh fruit and vegetables, meat and seafood, and canned items. Weight in kgs', image: 'assortedfoodproducts.jpg'

d2 = Donation.create donation_name: 'mixed fruit only', quantity: 20, donation_desc1: 'Assorted combination of fresh fruit. Weight in kgs', image: 'freshmixedfruit.jpg'

d3 = Donation.create donation_name: 'mixed fruit and vegetables', quantity: 20, donation_desc1: 'A mixed combination of fresh fruit and vegetables, meat and seafood, and canned items.  Weight in kgs', image: 'mixedvegetables.jpg'

d4 = Donation.create donation_name: 'mixed food', quantity: 30, donation_desc1: 'A mixed combination of fresh fruit and vegetables, meat and seafood, and canned items. Weight in kgs', image: 'potato.jpg'



Product.destroy_all
p1 = Product.create product_name: 'custom tshirt', price: 39, product_desc1: 'A custom tee on responsibly made organic cotton', image: 'donut-tshirt.jpg'
p2 = Product.create product_name: 'ceramic mugs', price: 29, product_desc1: 'Set of 4 handmade ceramic mugs', image: 'ceramicmug.jpg'
p3 = Product.create product_name: 'ceramic plates', price: 29, product_desc1: 'Set of 4 handmade ceramic plates', image: 'ceramicplates.jpg'
p4 = Product.create product_name: 'bracelets', price: 35, product_desc1: 'Supporting Food for Thought - leather bracelets', image: 'bracelets.jpg'
p5 = Product.create product_name: 'custom tshirt', price: 19, product_desc1: 'Supporting Food for Thought - a custom tee on responsibly made organic cotton', image: 'blahtshirt.jpg'
p6 = Product.create product_name: 'sunglasses', price: 59, product_desc1: 'Supporting Food for Thought - vintage sunglasses', image: 'vintagesunglasses.jpg'
p7 = Product.create product_name: 'custom tshirt', price: 34, product_desc1: 'Supporting Food for Thought - a custom tee on responsibly made organic cotton', image: 'donut-tshirt.jpg'
p8 = Product.create product_name: 'custom tshirt', price: 27, product_desc1: 'Supporting Food for Thought - a custom tee on responsibly made organic cotton', image: 'donut-tshirt.jpg'

User.destroy_all

u1 = User.create :first_name => "John", :last_name => "Doe", :email => "johndoe@gmail.com", :address1 => "20 Mockingbird Lane", :address2 => "Surrey Hills", :postcode => "2100", :password => "chicken", :password_confirmation => "chicken", :admin => "true"

u2 = User.create :first_name => "Jane", :last_name => "Doe", :email => "janedoe@gmail.com", :address1 => "284 Mockingbird Crescent", :address2 => "Campbelltown", :postcode => "2020", :password => "chicken", :password_confirmation => "chicken"

Cart.destroy_all

Order.destroy_all

Item.destroy_all

FoodOrder.destroy_all

f1 = FoodOrder.create :pickup => Time.now
f2 = FoodOrder.create :pickup => Time.now
f3 = FoodOrder.create :pickup => Time.now


f1.user = u1
f1.donation = d1
f2.user = u2
f2.donation = d1
f3.user = u2
f3.donation = d2

f1.save
f2.save
f3.save
# p "number of donations by User:  #{u2.donations.count}"
