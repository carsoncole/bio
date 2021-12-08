# BIO

A straightforward personal resume site.

## Features

Lists experiences, education, and your availability.

## Authentication

A simple, single login, using basic authentication. Credentials are stored using Rails encrypted credentials in `config/credentials.yml.enc`
. Here is an example file:

```ruby
  http_auth:
    name: John Doe
    password: password123
```

## Installation

### Seeding data

To see sample data, you can seed the database with a random bio and experiences:

```ruby
rails db:seed
```



