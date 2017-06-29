# feedr
by [Team feedr](#team-feedr) - Makers Academy Remote April 2017 final project

### About
feedr is a revolutionary web-app that brings local diners together for a night of great food and wine!
Diners attend a dinner party and as the night comes to an end, can donate to the host for the night.

---
## Visit our Heroku site
https://f-e-e-d-r.herokuapp.com/

## Or run locally
View the repository [here](https://github.com/DSeanGray/feedr) on GitHub

```bash
git clone git@github.com:DSeanGray/feedr.git
bundle install
bin/rails db:create
bin/rails db:migrate
```
### To run the test suite
```bash
rspec
```

### To view in browser
```bash
bin/rails server
```
Then visit localhost:3000

---

## Team feedr

* [Sandy Cochrane](https://github.com/axcochrane)
* [David Gray](https://github.com/DSeanGray)
* [Cristina Iannone](https://github.com/enonnai)
* [Ben Noonan](https://github.com/BenNoonan1991)
* [Jonathan Elliot](https://github.com/jonathanelliot)

---

## Processes
* XP (Extreme Programming)
* Agile
* Pair programming
* TDD
* Remote collaboration

---
## Technologies

* [Ruby](https://www.ruby-lang.org/en/) as the main back-end language
* [Rails 5](http://rubyonrails.org/) for the framework
* [PostgreSQL](https://www.postgresql.org/) for handling databases
* [Capybara](https://github.com/teamcapybara/capybara) for acceptance testing
* [GitHub](https://github.com/makersacademy/acebook-remote-april-2017) for storing our work
* [Waffle](https://waffle.io/) for tracking and organising workflow
* [Heroku](https://f-e-e-d-r.herokuapp.com/) for hosting our website
* Bootstrap for styling
* Git for version managing

---

## Gems

* [Devise](https://github.com/plataformatec/devise)
* [Acts As Votable](https://github.com/ryanto/acts_as_votable)
* [Geocoder](https://github.com/alexreisner/geocoder)
* [HTTParty](https://github.com/jnunemaker/httparty)

---
## APIs

* Google Maps JavaScript API
* Google Maps Distance Matrix API
* Stripe Checkout API

---

## User stories

```
As a sociable wine and food lover
So that i can wine with local winers,
I would like to sign up to feedr.
```
```
As a sociable wine and food lover,
So that i can let others in my area know about my event.
I would like to create an event.
```
```
As a host,
So that I can manage how many people arrive,
I would like to set a maximum capacity for the event.
```
```
As a visitor,
So that I know how far I'm traveling to an event.
I would like to check how far away an event is.
```
```
As a host,
So that I know who would like to attend.
I would like to view profiles of the people that respond to the event listing.
```
```
As a host,
So that I know a little bit about the people attending,
I would like to see their profile information.
```
```
As a visitor,
So that I can let the host know what i thought of their night.
I would like be able to donate for the night.
```

## User stories coming soon

```
As a User,
So that I can show off how much fun I am,
I would like to create a profile with a some basic likes and dislikes.
```
```
As a allergy suffering user,
So that i don't blow up like a balloon,
I would like to let people know about any dietary requirements before attending.
```
```
As a host,
So that my location is hidden,
I would only like to share my address with people after I confirm their invitation.
```
