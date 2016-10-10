# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Donation.destroy_all
d1 = Donation.create donation_name: 'mixed food', quantity: 10, donation_desc1: 'A mixed combination of fresh fruit and vegetables, meat and seafood, and canned items', image: 'donut-tshirt.jpg'

d2 = Donation.create donation_name: 'mixed food', quantity: 20, donation_desc1: 'A mixed combination of fresh fruit and vegetables, meat and seafood, and canned items', image: 'donut-tshirt.jpg'

d3 = Donation.create donation_name: 'mixed food', quantity: 40, donation_desc1: 'A mixed combination of fresh fruit and vegetables, meat and seafood, and canned items', image: 'donut-tshirt.jpg'

d4 = Donation.create donation_name: 'mixed food', quantity: 60, donation_desc1: 'A mixed combination of fresh fruit and vegetables, meat and seafood, and canned items', image: 'donut-tshirt.jpg'


Product.destroy_all
p1 = Product.create product_name: 'custom tshirt', price: 39, product_desc1: 'Supporting Food for Thought - a custom tee on responsibly made organic cotton', image: 'donut-tshirt.jpg'
p2 = Product.create product_name: 'custom tshirt', price: 29, product_desc1: 'Supporting Food for Thought - a custom tee on responsibly made organic cotton', image: 'donut-tshirt.jpg'
p3 = Product.create product_name: 'custom tshirt', price: 29, product_desc1: 'Supporting Food for Thought - a custom tee on responsibly made organic cotton', image: 'donut-tshirt.jpg'
p4 = Product.create product_name: 'custom tshirt', price: 49, product_desc1: 'Supporting Food for Thought - a custom tee on responsibly made organic cotton', image: 'donut-tshirt.jpg'
p5 = Product.create product_name: 'custom tshirt', price: 19, product_desc1: 'Supporting Food for Thought - a custom tee on responsibly made organic cotton', image: 'donut-tshirt.jpg'
p6 = Product.create product_name: 'custom tshirt', price: 39, product_desc1: 'Supporting Food for Thought - a custom tee on responsibly made organic cotton', image: 'donut-tshirt.jpg'
p7 = Product.create product_name: 'custom tshirt', price: 34, product_desc1: 'Supporting Food for Thought - a custom tee on responsibly made organic cotton', image: 'donut-tshirt.jpg'
p8 = Product.create product_name: 'custom tshirt', price: 27, product_desc1: 'Supporting Food for Thought - a custom tee on responsibly made organic cotton', image: 'donut-tshirt.jpg'

User.destroy_all

u1 = User.create :first_name => "John", :last_name => "Doe", :email => "johndoe@gmail.com", :address1 => "20 Mockingbird Lane", :address2 => "Surrey Hills", :postcode => "2100", :password => "chicken", :password_confirmation => "chicken", :admin => "true"

u2 = User.create :first_name => "Jane", :last_name => "Doe", :email => "janedoe@gmail.com", :address1 => "284 Mockingbird Crescent", :address2 => "Campbelltown", :postcode => "2020", :password => "chicken", :password_confirmation => "chicken"
