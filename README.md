This is a sample application for a twitter clone app, I will be building it from a non scaffolding. This app was build Test Driven Development (TDD) approach with unit test. 

Ruby on Rails, Boostrap, Sass SQlite for the development portion of the app and postgreSQL for the deployed app

Some of the implementations on the app were :

Sign up                     Email verification      Email account activations

Secure Socket Layer (SSL)   Remember users through sessions and cookies 

Updating, Showing, deleting users                   Password reset

Users ability to micropost  Micropost feed          micropost with images

Following and being follow by users ( just like in Twitter)

Status feed microposts

You can check the deployed Heroku version on https://afternoon-oasis-45843.herokuapp.com/

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server