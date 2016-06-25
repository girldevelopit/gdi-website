# [Girl Develop It](http://girl-develop-it.herokuapp.com)

[![Build Status](https://travis-ci.org/girldevelopit/gdi-new-site.svg?branch=production)](https://travis-ci.org/girldevelopit/gdi-new-site)

[![Coverage Status](https://coveralls.io/repos/dianpan/gdi-new-site/badge.svg?branch=production&service=github)](https://coveralls.io/github/dianpan/gdi-new-site?branch=production)

This is the repo for the newly updated Girl Develop It website. In this README you'll find helpful resources to get you up and running to start contributing to the code base!

## About

Girl Develop It is a nonprofit organization that exists to provide affordable and accessible programs for women interested in learning web and software development. Through mentorship and hands-on instruction Girl Develop It can help them reach their goals.

## Documentation

We have migrated our documentation over to Read The Docs! Learn more about how to contribute to our code base by following along here: [http://gdi-new-site.readthedocs.org/](http://gdi-new-site.readthedocs.org/).

###How to Vagrant
_Note: This will move to the official documentation once the Vagrant dev environment is adopted into the staging branch._

To  set up the vagrant environment locally:
1. [Install VirtualBox](https://www.virtualbox.org/)
2. [install Vagrant](https://www.vagrantup.com/downloads.html)
3. [clone the git repository](https://github.com/girldevelopit/gdi-website.git)
4. $ vagrant up
5. $ vagrant ssh
6. $ cd /opt/gdi/development
7. $ bundle install
8. $ rake db:create db:migrate db:seed
9. $ bin/rails s
10. Point your browser to localhost:3000
11. DEVELOP IT! \o/
