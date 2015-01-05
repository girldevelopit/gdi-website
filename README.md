# [Girl Develop It](http://girl-develop-it.herokuapp.com)
[![Build Status](https://travis-ci.org/imuchnik/gdi-new-site.svg?branch=master)](https://travis-ci.org/imuchnik/gdi-new-site)

This is the repo for the newly updated Girl Develop It website. In this README you'll find helpful resources to get you up and running to start contributing to the code base!

## About

Girl Develop It is a nonprofit organization that exists to provide affordable and accessible programs for women interested in learning web and software development. Through mentorship and hands-on instruction Girl Develop It can help them reach their goals.

## Contributing

Great! We're thrilled that you are interested in helping out with the website and contributing your talents to our code base. In this section, you'll learn more about how to go about actually contributing and how to get your local development environment setup.

### Getting familiar with git/Github

If you are unfamiliar with forking, branching or working with git/Github, here are a few things you'll need to do:

- Create a [Github account](https://github.com/join), or sign in to you existing account.
- Go through the following git/Github tutorial: [https://try.github.io/](https://try.github.io/)
- Read about Github flow and the process for submitting code: [https://guides.github.com/introduction/flow/index.html](https://guides.github.com/introduction/flow/index.html)

### Required installations
* [homebrew](http://brew.sh/), a package manager for Mac OS X.
* [rvm](http://rvm.io/), a command-line tool to manage different versions of Ruby.
* ruby 2.1.2
* PostgreSQL 9.3.+
  * Install with homebrew using `brew install postgres` and follow the brew instructions for these with `brew update` and `brew doctor`. 
  * **OR**
  * Using [Postgres.app for Mac OS X](http://www.postgresql.org/download/macosx/) (recommended).

**Note:** If you are upgrading from 9.2., please see instructions below for "Upgrading PostgreSQL from 9.2."

### Ubuntu installation instructions
* Install RVM [Website Instructions](http://rvm.io/rvm/install)
  * Install the pgp key for rvm
  ```sh
  gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
  ```
  * Install rvm, make sure to not run this as sudo, RVM should be installed on your user
  ```sh
  curl -sSL https://get.rvm.io | bash -s stable
  ```
  * Source the RVM scripts (the output from the install command has instructions for how to set this up permanently)
  ```sh
  source ~/.rvm/scripts/rvm
  ``` 
* Install Ruby
```sh
rvm install 2.1.2
```
* Create a new Gemset
```sh
rvm gemset use gdi-new-site --create
```
* Install some system prereqs
```sh
sudo apt-get install build-essential libpq-dev  imagemagick libmagickwand-dev nodejs
```
* Install and Configure Postgres [Website Instructions](http://www.postgresql.org/download/linux/ubuntu/)
  * Simple install (Try first, if it fails follow complex install)
  ```sh
  sudo apt-get install postgresql-9.3
  ```
  * Complex install
  **Note:** Change precise to match the name of your ubuntu distribution (12.04 = precise, 14.04 = trusty)

    ```sh
    echo "deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main" > /etc/apt/sources.list.d/pgdg.list
    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | \
    sudo apt-key add -
    sudo apt-get update
    sudo apt-get install postgresql-9.3
    ```
  * Configure [Source](https://stackoverflow.com/questions/11092807/installing-postgresql-on-ubuntu-for-ruby-on-rails)
  **Note:** Change <username> to your ubuntu username

    ```sh
	  sudo su postgres -c psql
	  postgres=# CREATE ROLE <username> SUPERUSER LOGIN;
      postgres=# \q
	 ```

### Setting up your local dev environment

- Fork this repo into your personal Github account.
- Clone _your_ copy to your desktop.
- Next, install all required gems:

```sh
bundle install
```

- Next, start postgres with command-line interface OR with PostgreSQL Mac OS X GUI. Make sure it is running before proceeding to next steps.

Finally, set up the database:

```sh
rake db:create db:migrate db:seed
```

If you are setting up a local development environment, ignore rake migration errors for now. Optionally instead of the `rake` command, you can simply run

```sh
createdb
```

- Meetup API key is set as an environment variable. To register a [new API key](https://secure.meetup.com/meetup_api/key/).

To run locally:
```
$ export MEETUP_API_KEY=[new key]
```

Check with
```
$ echo $MEETUP_API_KEY
```

- Add another remote:  
   `git remote add upstream git@github.com:girldevelopit/gdi-new-site.git`
- Now test your local dev environment by running `rails s` and visiting http://0.0.0.0:3000. You should now see a local copy of the live website! \o/
   
### Submitting a pull request

1. Make a local branch for your feature (e.g. `git branch update-homepage`).
2. Switch to that new branch (e.g. `git checkout update-homepage`)
3. Make your changes on your branch.
4. Test it out locally by running `rails s` and visiting [http://0.0.0.0:3000](http://0.0.0.0:3000) in your favorite browser.
5. Run `git fetch upstream` and then `git rebase upstream/master` in your branch.
6. Test again, see step 6.
7. Push your branch to your repo (e.g. `git push origin update-homepage`)
8. Make a pull request against the main repos master branch!

We generally check all pull requests every 24-48 hours, but feel free to ping us on [Twitter](http://twitter.com/girldevelopit) if there is an urgent need.

### Running the tests
1. Make sure that you've run bundle install to get all the gems required installed
2. In the root directory of the project run `rspec`

To run the tests in a single file run `rspec spec/#{path_to_file}`
To run just one test, or one group of tests run `rspec -e 'the name of the test'`

For more information on testing with rspec you may want to check these resources:

General Testing:
[Unit Testing](http://martinfowler.com/bliki/UnitTest.html)
[Definition of Terms](https://programmers.stackexchange.com/questions/48237/what-is-an-integration-test-exactly)

Rspec info:
[Better Specs Website](http://betterspecs.org/)
[Rspec Documentation](http://rspec.info/)

Testing Ruby on Rails:
[Everyday Rails Testing Book](https://leanpub.com/everydayrailsrspec)
[General Overview of Testing Rails Apps](http://robots.thoughtbot.com/how-we-test-rails-applications)


### Deploying to Heroku

If you are an owner and/or have been approved by one of the [Project Leads](https://github.com/girldevelopit/gdi-new-site/blob/master/CONTRIBUTORS.md#project-leads), than this section is relevant to you!

1. Be sure that have the [Heroku tool belt](https://toolbelt.heroku.com/) installed.
2. Add a remote to the GDI Heroku instance with `heroku git:remote -a girl-develop-it`.
3. Now deploy to Heroku with `git push heroku master`.

**NOTE:** This process will be updated as we start incorporating continuous integration processes, as well as after the site goes officially live.


## Troubleshooting

Here are a few things you can do to help if you run into any trouble with the installation process. If you need assistance, join the #website channel in our official Girl Develop It Slack.


```sh
	Is the server running locally and accepting
	connections on Unix domain socket "/var/pgsql_socket/.s.PGSQL.5432"?
```

Generally, this error means that you do not have a postgres process started on your machine. Try doing the following steps:

1. Make sure `~/Library/LaunchAgents` does not include `*.plist`.
2. Restart your computer.
3. Make sure that there is a postgres process running on your machine.
4. Add this to your ~/.bash_profile: `export PGHOST=localhost`.
5. Restart terminal or run `source ~/.bash_profile`.
6. Try `rake` or `createdb` commands again.

After that, you can run `rails server` to start the server on port `3000` or `rails console` for a REPL.

### Upgrading PostgreSQL from 9.2.*

1. Uninstall PostgreSQL. 
2. ```sh rm rf /usr/local/var/postgres/ ``` (or wherever you have your postgres/ directory).
3. Install PostgreSQL 9.3.
