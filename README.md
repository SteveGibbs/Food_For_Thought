# Food For Thought Charity Website
[Click here to see live Project (hosted on Heroku)](http://foodforthought-sgibbs.herokuapp.com/)

## Description
A relatively full featured charity website requiring corporate donor login to donate excess food items to charity, gift shop (not requiring login access) with shopping cart functionality, live sales reporting (for admin) with charts and potential to be built out for inventory management.

Project designed and deployed within four days as part of General Assembly's Web Development Immersive bootcamp (week 12 project week).

## Designed by
[Steve Gibbs](https://github.com/SteveGibbs)

## Features

#### Corporate Donor

1. Login to have ability to donote excess food - select from possible options.
2. Can edit user profile.

#### Other Customers
1. Browse gifts
2. Shopping cart to track items and proceed to checkout.

#### Admin
1. Order dashboard with live polling
2. Sales chart of orders (live updating via AJAX)
3. Edit donor and product catalogues and customer orders
4. Admin login and authorization

## User instructions
#### Admin login details:
- Email: johndoe@gmail.com
- Password: chicken

#### Food Donor login:
- Email: janedoe@gmail.com
- Password: chicken

#### Contact Us page

- google map

#### Mobile responsive

## Technology stack
- [Ruby on Rails](http://guides.rubyonrails.org/) and [PostgreSQL](https://www.postgresql.org/) for back-end build and database
- [Chart.js for Rails](http://www.chartjs.org) for charts
- [Simple Grid](http://simplegrid.io/) CSS grid layout with mobile responsiveness
- [Slick API](http://kenwheeler.github.io/slick/) for image carousels
- [Will_paginate API](https://github.com/mislav/will_paginate) for product catalogue pagination
- [jQuery](https://jquery.com/) library
- bcrypt 3.1.7 for password encryption
- Ruby, JavaScript, HTML5 and CSS3 as programming languages
- [Heroku](https://www.heroku.com/) for cloud deployment
- Googleapis for google maps


## New features under consideration
- **Inventory tracking and reporting**
- **Build out sales reporting**
- **Add pickup time and then live tracking of food pickups via delivery trucks (faked movement data)**
- **Payment and mailer functionality (was incorporated in the MGK Shopping Project so a lower priority to the above)**
