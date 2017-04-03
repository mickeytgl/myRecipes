# README

This is my latest personal project I developed to gain a deeper understanding on the framework on Ruby on Rails, I will cover the techniques that I learned during the development of this proyect, the ideas for my next proyect and which gems and techniques I believe I can use to achieve the functionality I want

FREQUENTLY ASKED QUESTIONS
-- Why don't you put this live so we can use it?
I don't know why Heroku gives me an error when I try to open the app live, it pushes and compiles correctly though. I suspect this is yet another of the many disadvantages on working on Windows. I will keep trying to make it work.

** Description of Proyect **

This is a recipes app, that allows users to browse through recipes by specific styles or ingredients. Users can also view profiles of users with an account (Chefs)

Chefs have the ability to create, edit and delete their own recipes, and to select styles and ingredients available or creating their own. Chefs also have the ability to 'like' other Chefs recipes and make comments on recipes or on another Chef's profiles.

Admins have the all the privileges as chefs, except that they can also mess up with recipes not made by them.

** Notes **
-BIGGEST ISSUE OF ALL - Developing locally in Windows: Worst idea ever, ran into a lot of problems using some gems like bcrypt and the installation of ImageMagick. Even though Heroku comes with with ImageMagick preinstalled and this would not be a problem in production, I lost a huge amount of time
 >>> Solutions: Work on Cloud9, Linux is sooooo much better and I don't have the space in my local machine to install Ubuntu 

 -Authentification:
 Used the bcrypt gem to handle has_secure_password
 >>>> Improvement: Devise works a lot better, it is easy to implement (in a mockup app that I built to test it out) and is more popular, will be using it from here on forward probably

 -Like implementation
 Implemented a feature, where logged in users can 'like' or 'dislike' using has_many through 
 >>>> Improvement: Use polymorphic associations, which were implemented for the comments feature using the commentable attribute

 -Admin implementation
 Admin feature where admins have access to privileges no other user has access to, like editing, or deleting posts (recipes) not created by them

 ** For next proyect **

 First of all, work in Linux. 

 For a better UX, I would use the Selectize.js library to better implement recipes's ingredients and styles, so that users don't have to go to a new page to create a recipe or style.

 Sticking with UX, use AJAX to implement a Modal so that users can create a recipe without leaving the page, and have it load inmediately after they hit the "Create" button