# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


* VERSION HISTORY:

Branch: animal-crud-actions
- generated resource Animal with values common_name:string, scientific_binomial:string
- Created controller methods in animals for CRUD actions
- tested all methods in postman

Branch: sighting-crud-actions
- generate resource Sighting with values latitude:float, longitude:float, date:date
- associated sightings belongs_to animal, animal has_many sightings
- Migration to add animal_id:integer to sightings
- created controller methods in sightings for CRUD actions
- tested all methods in postman

Branch: animal-sightings-reports
- enhanced animal 'show' method to display all associated sightings
- enhanced sightings 'index' method to accept start_date and end_date params, then display any sightings dated between the two
- tested changed methods in postman