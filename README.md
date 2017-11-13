# Yelp Clone - Makers Academy Project (Week 8)

## Project Outline

![Yelp screenshot](https://github.com/makersacademy/course/blob/master/images/yelp.jpg)

This week's project is a clone of [Yelp](http://www.yelp.co.uk). The goal is to introduce you to Rails, focusing especially on:

* Creating Rails applications
* The structure of Rails apps (MVC, the router, helpers)
* TDD in Rails, with RSpec & Capybara
* Associations
* Validations
* AJAX in Rails

## How to run the app locally

* Clone the repository
* Run `rspec` to see the tests and test coverage
* Run `bin/rails server`
* Visit `http://localhost:3000`

## User Stories

V1 Specification   
* Visitors can create new restaurants using a form, specifying a name and description

```
As a restaurateur
So I can tell prospective customers about my restaurant
I want to submit my restaurant's name and description to the list
```

* Restaurants can be edited and deleted

```
As a restaurateur
So I can keep potential customers informed
I need to be able to edit a restaurant listing

As a restaurateur
So I can keep potential customers informed
I need to be able to delete a restaurant listing
```

* Visitors can leave reviews for restaurants, providing a numerical score (1-5) and a comment about their experience

```
As a visitor
So I can rate a restaurant
I want to be able to leave a rating

As a visitor
So I talk about my experience
I want to be able to leave a comment
```

* The restaurants listings page should display all the reviews, along with the average rating of each restaurant

```
As a customer
So I can find a good restaurant
I need to be able to see a list of restaurants

As a customer
So I can compare restaurants
I need to be able to read the reviews of restaurants

As a customer
So I can compare restaurants quickly
I need to be able to see the average star rating for each restaurant
```

* Validations should be in place for the restaurant and review forms - restaurants must be given a name and rating, reviews must be given a rating from 1-5 (comment is optional)

```
As a restaurateur
So that my restaurants page is correct
I want to validate the information I have entered is correct before I submit

As a restaurateur
So that I know the reviews my customers give are useful
I want the review to be validated before it is submitted
```

## Project Team

* Chris Dunham
* [Ed Lowther](https://github.com/edlowther)
* [Oliver Pople](https://github.com/oliverpople)
* [Alex Scott-Tonge](https://github.com/alexscotttonge)
