# [Girl Develop It](http://girl-develop-it.herokuapp.com)

This is the repo for the newly updated Girl Develop It website. In this README you'll find helpful resources to get you up and running to start contributing to the code base!


## About

Girl Develop It is a nonprofit organization that exists to provide affordable and accessible programs for women interested in learning web and software development. Through mentorship and hands-on instruction Girl Develop It can help them reach their goals.


## Installation and usage

This application uses Postgres for it's database, so you will need it installed on your machine. 

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

Great! We're thrilled that you are interested in helping out with the website and contributing your talents to our code base. In this section, you'll learn more about how to go about actually contributing and how to get your local development environment setup.

### Getting familiar with git/Github

If you are unfamiliar with forking, branching or working with git/Github, here are a few things you'll need to do:

- Create a [Github account](https://github.com/join), or sign in to you existing account.
- Go through the following git/Github tutorial: [https://try.github.io/](https://try.github.io/)
- Read about Github flow and the process for submitting code: [https://guides.github.com/introduction/flow/index.html](https://guides.github.com/introduction/flow/index.html)

### Setting up your local dev environment

1. Fork this repo into your personal Github account.
2. Clone _your_ copy to your desktop. Read more about various ways of cloning here: []()
3. Add another remote:  
   `git remote add upstream git@github.com:girldevelopit/gdi-new-site.git`
4. Make a local branch for your feature (e.g. `git branch update-homepage`).
5. Switch to that new branch (e.g. `git checkout update-homepage`)
5. Make your changes on your branch.
6. Test it out locally by running `rails server` and visiting [http://0.0.0.0:3000](http://0.0.0.0:3000) in your favorite browser.
7. Run `git fetch upstream` and then `git rebase upstream/master` in your branch.
8. Test again, see step 6.
9. Push your branch to your repo (e.g. `git push origin update-homepage`)
10. Make a pull request against the main repos master branch!

We generally check all pull requests every 24-48 hours, but feel free to ping us on [Twitter](http://twitter.com/girldevelopit) if there is an urgent need.