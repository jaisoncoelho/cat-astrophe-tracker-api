Cat-astrophe Tracker API
========================

The "Cat-astrophe Tracker" API is a Ruby on Rails API that allows cat owners to create profiles for their cats, report sightings of cats in the neighborhood, rate and comment on cats, and track the popularity of cats in the community.

Installation
------------

To install the "Cat-astrophe Tracker" API, follow these steps:

1.  Clone this repository to your local machine.
2.  Install Ruby and Rails if you haven't already.
3.  Run `bundle install` to install the required gems.
4.  Copy the `.env.template` file to a new file called `.env` and replace the placeholder values with your own database credentials. You can use a containerized PostgreSQL database or a local PostgreSQL database.
5.  Run `rails db:migrate` to create the database tables.
6.  (Optional) Run `rails db:seed` to populate the database with sample data.
7.  Run `rails server` to start the API server.

Usage
-----

To use the "Cat-astrophe Tracker" API, follow these steps:

1.  Start the Rails server by running `rails server`.
2.  Send requests to the API endpoints using a tool like cURL, Postman, or a web browser.
3.  Use the API documentation (coming soon) to learn about the available endpoints and request formats.

License
-------

The "Cat-astrophe Tracker" API is released under the MIT License. See the `LICENSE` file for details.
