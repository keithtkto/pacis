#Pacis - The simple and mobile time card and payroll system

###[Link to Pacis here](http://pacific-taiga-52255.herokuapp.com/)

###Hi, welcome to the markdown document of my app [Pacis](http://pacific-taiga-52255.herokuapp.com/)!

##Disclaimer
Pacis is a student project trying to mimic a real world payroll and and time card application. It does not meet the proper legal requirement for payroll application.

##Overview

Pacis is a web application for small bussiness payroll and time card management. Employers and bussiness managers can use this application to streamline their payroll process and time card management. Users can utilize this application enroll, log in, clock in/out and view their work hours, and also generate pay stubs. This application aims to be simple and easy to use.

![Screen shot of the home page of Pacis](https://i.imgur.com/OMF3kzv.png)



##Specifications
###Design
This is student project building a full CRUD web application using RESTful routes using Ruby on Rails. 

This web application is model from several payroll, time-sheet and finanical management web applications. It is designed to be simple design and easy to use, with professional looking template.


##Features
This web application allows users to sign up their company, create an account, enroll new employees, log in, clock in/out, and generate pay stubs.

### Sign up company
	
1. Users can register their company using the sign-up button above, after register, they will be redirected to a employer sign up page. 	

### Create an employer/ bussiness owner account


1. After registering their company, user will need to sign up with their first name, last name, email and a password, which is hashed.

###Enroll new employees


1. After employer successfully signing up their account, they will be redirected to a index page where they have access to all the application. They can begin enrolling their employee in Pacis's system.
2. Employee enrollment require first name, last name, and an Email address. Password will be automatically generated using the first letter of their first and and last name plus "123" (John Doe => jb123).
3. The first time the newly enrolled employee will be redirected to change their password.
4. Employees are group into two categories, employee and manager, manager have editing other users privileges and be able to view the activities of other employees. Regular employee can only view and edit their own info.

###Log in/out  

1. Users can log in and log out account 

### Clock in/out & Geolocation tracking

1. Users are able to clock in and clock out, the time clock session will not cease even if the users log out from their account. In addition, a latitude and longitatue infomation from the browser is also saved into our data base, so employers can check the check in location.
   
### Generate pay stubs
	
1. In working progress, employers will be able to generate paystubs base on paystub start date, day of the week and their pay period (weekly/biweekly/monthly).


##Why payroll and timesheet application??
My goals when choosing making Pacis for WDI project 2 is that I want to create a bussiness type application that will allowed me to practice data modeling and fully explore the RESTful routes. 

My intended audience is small companies who would like to modernize and streamline the often inaccurate and complicated time card/ payroll system.

##Technology

###This application is primarily built using Ruby on Rails. It also contain some Javascript for some DOM manipulation.

* Ruby on Rails
* Javascripts
* HTML5
* CSS3

###Ruby on Rails gems
* bcrypt - to hash password
* [country_select](https://github.com/stefanpenner/country_select) - generate country selector 

###Built in Ruby on Rails method
* DateTime method - to create time stamp for clock in/out

###Browser built in function with Javascript
* Geolocator - find latitude and longitute of current user position

```
navigator.geolocation.getCurrentPosition(function(position) {
  console.log(position.coords.latitude, position.coords.longitude);
});
```

###Deployment

This application is deployed using the [Heroku](https://www.heroku.com/) cloud Platform

You can find the Heroku installation and deployment infomation [here](https://devcenter.heroku.com/articles/getting-started-with-rails4)!

##Next Step

1. Fully function paystubs with overtime and PTO calculation
2. Automatic paystub calculations
3. Mobile freindly version
4. Clean up code mostly, convert current CSS into SCSS

#Get started
This game is mobile ready and should work on most web browser.

Google Chrome is prefered.

##Developer
###Keith To

##Links
	
###[Trello link](https://trello.com/b/rp8rFFZV/wdi-project-2-crud-web-app-pacis)

###[Github page](https://github.com/keithtkto/pacis)





