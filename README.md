# [Girl Develop It](http://girl-develop-it.herokuapp.com)

Rebuild & update website in Rails 4.1.4 and Ruby 2.1.2.


## About

Girl Develop It is a nonprofit organization that exists to provide affordable and accessible programs for women interested in learning web and software development. Through mentorship and hands-on instruction Girl Develop It can help them reach their goals.


## Installation and usage

This application uses Postgres, so you will need it installed on your machine. If on Linux, use your package manager.
On OS X, if you have Homebrew, run `brew install postgresql`.

Next, install all required gems:

```sh
bundle install
```

Finally, set up the database:

```sh
rake db:create db:migrate db:seed
```

After that, you can run `rails server` to start the server or `rails console` for a REPL.


## Docs

Meetup API key is set as an environment variable. To register a [new API key](https://secure.meetup.com/meetup_api/key/).

To run locally:
```
$ export MEETUP_API_KEY=[new key]
```

Check with
```
$ echo $MEETUP_API_KEY
```


## Contributing

If you are new to using git and GitHub, follow these directions:

1. Fork the project.
2. Clone _your_ copy.
3. Add another remote:  
   `git remote add upstream git@github.com:TIYA-Durham-GDI/GDI-rails-4.git`
4. Make a local branch for your feature.
5. Write code.
6. Test it out.
7. Run `git fetch upstream` and then `git merge upstream/master` in your branch.
8. Test again.
9. Push your branch to your repo.
10. Make a pull request!
