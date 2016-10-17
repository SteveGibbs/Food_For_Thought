# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Donation.destroy_all
d1 = Donation.create donation_name: 'fresh and canned food', quantity: 10, donation_desc1: 'A mixed combination of fresh fruit and vegetables, meat and seafood, and canned items. Weight in kgs', image: 'assortedfoodproducts.jpg'
d2 = Donation.create donation_name: 'mixed fruit only', quantity: 10, donation_desc1: 'Assorted combination of fresh fruit. Weight in kgs', image: 'freshmixedfruit.jpg'
d3 = Donation.create donation_name: 'mixed fruit and vegetables', quantity: 10, donation_desc1: 'A mixed combination of fresh fruit and vegetables.  Weight in kgs', image: 'mixedvegetables.jpg'
d4 = Donation.create donation_name: 'mixed food', quantity: 10, donation_desc1: 'A mixed combination of predominatly canned items with assorted fresh food. Weight in kgs', image: 'potato.jpg'
d5 = Donation.create donation_name: 'fresh and canned food', quantity: 20, donation_desc1: 'A mixed combination of fresh fruit and vegetables, meat and seafood, and canned items. Weight in kgs', image: 'assortedfoodproducts.jpg'
d6 = Donation.create donation_name: 'mixed fruit only', quantity: 20, donation_desc1: 'Assorted combination of fresh fruit. Weight in kgs', image: 'freshmixedfruit.jpg'
d7 = Donation.create donation_name: 'mixed fruit and vegetables', quantity: 20, donation_desc1: 'A mixed combination of fresh fruit and vegetables.  Weight in kgs', image: 'mixedvegetables.jpg'
d8 = Donation.create donation_name: 'mixed food', quantity: 20, donation_desc1: 'A mixed combination of predominatly canned items with assorted fresh food. Weight in kgs', image: 'potato.jpg'
d9 = Donation.create donation_name: 'fresh and canned food', quantity: 30, donation_desc1: 'A mixed combination of fresh fruit and vegetables, meat and seafood, and canned items. Weight in kgs', image: 'assortedfoodproducts.jpg'
d10 = Donation.create donation_name: 'mixed fruit only', quantity: 30, donation_desc1: 'Assorted combination of fresh fruit. Weight in kgs', image: 'freshmixedfruit.jpg'
d11 = Donation.create donation_name: 'mixed fruit and vegetables', quantity: 30, donation_desc1: 'A mixed combination of fresh fruit and vegetables.  Weight in kgs', image: 'mixedvegetables.jpg'
d12 = Donation.create donation_name: 'mixed food', quantity: 30, donation_desc1: 'A mixed combination of predominatly canned items with assorted fresh food. Weight in kgs', image: 'potato.jpg'



Product.destroy_all
p1 = Product.create product_name: 'custom tshirt', price: 39, product_desc1: 'A custom tee on responsibly made organic cotton', image: 'donut-tshirt.jpg'
p2 = Product.create product_name: 'ceramic mugs', price: 29, product_desc1: 'Set of 4 handmade ceramic mugs', image: 'ceramicmug.jpg'
p3 = Product.create product_name: 'ceramic plates', price: 29, product_desc1: 'Set of 4 handmade ceramic plates', image: 'ceramicplates.jpg'
p4 = Product.create product_name: 'bracelets', price: 35, product_desc1: 'Supporting Food for Thought - leather bracelets', image: 'bracelets.jpg'
p5 = Product.create product_name: 'custom tshirt', price: 19, product_desc1: 'Supporting Food for Thought - a custom tee on responsibly made organic cotton', image: 'blahtshirt.jpg'
p6 = Product.create product_name: 'sunglasses', price: 59, product_desc1: 'Supporting Food for Thought - vintage sunglasses', image: 'vintagesunglasses.jpg'
p7 = Product.create product_name: 'hand-crafted coffee cup', price: 18, product_desc1: 'A set of 4 hand-crafted coffee cups available in matching sets of green, blue or charcoal grey', image: 'coffeecup.jpg'
p8 = Product.create product_name: 'hand-crafted mug', price: 22, product_desc1: 'Hand-crafted mug - available individually or in an set of 4 or 6', image: 'mug.jpg'
p9 = Product.create product_name: 'tea-towel', price: 26, product_desc1: 'Screenprinted tea towel of butterflies', image: 'teatowel1.jpg'
p10 = Product.create product_name: 'bespoke tea-towel', price: 22, product_desc1: 'A tea towel featuring John Ashtons painting of galahs', image: 'teatowel.png'
p11 = Product.create product_name: 'storage container', price: 38, product_desc1: 'A stoneware storage container', image: 'storage.jpg'
p12 = Product.create product_name: 'storage canisters', price: 48, product_desc1: 'A set of melamine kitchen storage canisters', image: 'canisters.jpg'
p13 = Product.create product_name: 'feltbowl', price: 28, product_desc1: 'A feltbowl useful for any situation', image: 'feltbowl.jpg'










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
