# Project #2: EcoSmart App

A web app to help people make more sustainable choices in everyday life. It is built with Ruby on Rails and deployed to Heroku.

Start earning points today: https://ecosmart-app.herokuapp.com

## Technical Specifications
* Rails v5.1.6
* Ruby v2.4.1
* Postgres database

### Approach
The app utilises the model–view–controller (MVC) framework of Rails.

* Models:
  * User - Users set up an account via a form and have their own profile page.
  * Task - Users complete a task to earn points.
  * Achievement - Tracks users and tasks.
  * Badge - Users earn badges upon reaching certain levels of accumulated points.  
  * Relationship - Users can follow each other.
  * Message - Admin can send information about upcoming events on the forum and users can communicate with each other in real time.


* Handles data validation:
  * Sign up information - verifying valid email addresses and setting secure passwords.
  * All fields in the forms are set as required.
  * Incorrect inputs are handled through error messages.


* Handles authentication and authorization. Examples include:
  * Users must be signed in to access app features.
  * Users can only edit and delete their own account.
  * Only the Admin user can add/edit/delete tasks and badges.  


* The app endeavours to adhere to best practices. For example, the principle of ***DRY*** (Don't Repeat Yourself) by the using partials in views.

* Ruby Gems have been installed including:
  * pry-rails v0.3.6 for development
  * rails_12factor v0.0.3 for production
  * brcrypt v3.1.11 for password encryption
  * jquery-rails v4.3.3 for UI, eg. AJAX
  * cloudinary v1.9.1 for image file uploads
  * redis v4.0.1 to run Action Cable in production
  * geocoder v1.4.7 for location services with Google Maps
  * stripe v3.13.0 for donation payments
  * nokogiri v1.8.2 to scrape data on events
  * three v1.2.0 for three.js animation
  * sprockets-es6 v0.9.2 to handle es6 code

## Dedication

Dedicated to Joel Turnbull  :smiley_cat:

## Terms & Conditions
This project is licensed under the MIT License.
