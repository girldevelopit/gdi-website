## Contributing

Great! We're thrilled that you are interested in helping out with the website and contributing your talents to our code base. In this section, you'll learn more about how to go about actually contributing and how to get your local development environment setup.

### Getting familiar with git/Github

If you are unfamiliar with forking, branching or working with git/Github, here are a few things you'll need to do:

- Create a [Github account](https://github.com/join), or sign in to you existing account.
- Go through the following git/Github tutorial: [https://try.github.io/](https://try.github.io/)
- Read about Github flow and the process for submitting code: [https://guides.github.com/introduction/flow/index.html](https://guides.github.com/introduction/flow/index.html)

### Submitting a pull request

1. Make a local branch for your feature (e.g. `git branch update-homepage`).
2. Switch to that new branch (e.g. `git checkout update-homepage`)
3. Make your changes on your branch.
4. Test it out locally by running `rails s` and visiting [http://0.0.0.0:3000](http://0.0.0.0:3000) in your favorite browser.
5. Run `git fetch upstream` and then `git rebase upstream/master` in your branch.
6. Test again, see step 4.
7. Push your branch to your repo (e.g. `git push origin update-homepage`)
8. Make a pull request against the main repos master branch!

We generally check all pull requests every 24-48 hours, but feel free to ping us on [Twitter](http://twitter.com/girldevelopit) if there is an urgent need.

### Running the tests

Before submitting a pull request, we recommend running tests prior to doing so. We have a Travis CI that runs these tests prior to being able to deploy to Heroku, so you'll need to make sure that the tests are passing (or your changes will not get merged in).

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