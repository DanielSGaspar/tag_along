# Tag Along

Tag Along is a web app that helps surfers without a car get to beaches around Lisbon. It also allows surfers with a car to save on costs by selling a seat on the ride to those beaches. This web app was created as the final project for a webdevelopment bootcamp at Le Wagon with my fellow colleagues shady-seal and tartari1993.

## Features
- Based on your location, the dashboard suggests beaches with rides where the pick-up location is close to your location.
- You can browse through the rides, check out their details, message the person offering the ride, and book the ride using Stripe for secure payments.
- The cards that display the beaches on the dashboard also use an API to display wind and swell conditions.
- You can create your own ride and offer seats to other surfers.

## Technologies

- Ruby on Rails
- HTML
- SCSS
- JavaScript
- Bootstrap
- Multiple gems
- Mapbox API
- Cloudinary API
- Stormglass API
- Stripe API

## Known Issues

- The web app is not responsive yet and is only formatted for phones.
- The back button does not work intuitively; it merely takes you to the previous page, which can be problematic when you are two layers deep and want to go back to the dashboard. You would have to use the dashboard button in the burger menu.
- Location-based suggestions have some issues.

## Getting Started

To get the Rails application up and running, follow these steps:

1. Clone the repository
2. Change directory to the cloned repository: `cd your-repo-name`
3. Install the required dependencies by running: `bundle install`
4. Create the database: `rails db:create`
5. Run database migrations: `rails db:migrate`
6. Seed the database with sample data, if any: `rails db:seed`. (Make sure you update the dates in the seed file to have rides displayed)
7. Start the Rails server: `dev`
8. Open your web browser and navigate to [http://localhost:3000](http://localhost:3000) to view the app

If you encounter any issues or errors, please refer to the Rails documentation or the project's specific documentation for further assistance.

**Note:** The above instructions assume you have Ruby, Rails, and the required dependencies installed on your system. If you do not have them installed, please refer to the official Ruby and Rails installation guides before proceeding with the above steps.

## Contributions

Currently, there is no plan to accept contributions to this project. If that changes, updates will be posted on the GitHub page.

Thank you for checking out Tag Along
