# BIO

A straightforward personal resume site.

## Features

Lists experiences, education, and your availability.


## Installation


### Authentication

A simple, single login, using basic authentication. Credentials are stored using Rails encrypted credentials in `config/credentials.yml.enc`
. Here is an example file:

```ruby
  http_auth:
    name: John Doe
    password: password123
```

### Seeding data

To see sample data, you can seed the database with a random bio and experiences:

```ruby
rails db:seed
```

### Administration

To edit the site visit `/login`. You will need to enter your authentication credentials.


