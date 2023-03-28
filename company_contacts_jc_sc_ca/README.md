# Validations Challenges
Create a Rails application called company_contacts. The app will have a PostgreSQL database.
Generate a model called Account that has a username, a password, and an email.
All stories should have accompanying model specs.

# Developer Stories

[x] As a developer, I need username, password, and email to be required.
[x] As a developer, I need every username to be at least 5 characters long.
[x] As a developer, I need each username to be unique.
[x] As a developer, I need each password to be at least 6 characters long.
[x] As a developer, I need each password to be unique.
[x] As a developer, I want my Account model to have many associated Addresses.
[x] As a developer, I want Address to have street_number, street_name, city, state, and zip attributes. The street_number and zip should be integers.
[x] As a developer, I want to validate the presence of all fields on Address.


# Stretch Challenges

[x] As a developer, I need each Account password to have at least one number.
HINT: Read about custom validations in the Active Record validation docs.
[x] As a developer, I want to validate that Address street_number, street_name, zip are unique for within an account.
HINT: Read about :scope in the Active Record validation docs.
[x] As a developer, I want to validate that the Address street_number and zip are numbers.
HINT: Read about numericality in the Active Record validation docs.
[x] As a developer, I want to see a custom error message that says "Please, input numbers only" if street_number or zip code are not numbers.
HINT: Read about message in the validation docs.

# Testing

