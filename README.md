This is a sample application for a twitter like app, I will be building it from a non scaffolding approach from scratch.

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