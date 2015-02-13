## Installation (Docs)

Wanting to contribute to our lovely documentation? Here are some instructions on how to get the documentation resources setup on your local development environment.

### Required installations
* [pip](https://pip.pypa.io/en/latest/installing.html#install-pip), Python Package Index for installing packages needed to run the docs.
* [MkDocs](http://www.mkdocs.org/#installation), a simple static site generator for Markdown only files.


### Setting up your local dev environment for docs

NOTE: This setup assumes that you already have pip and MkDocs installed on your local machine.

* Create a fork of the main repo into your personal Github account. To learn more about forking, [read this guide created by Github](https://help.github.com/articles/fork-a-repo/).
* Open your favorite terminal application and `git clone` YOUR repo to your local machine.
* Now `cd` into the `gdi-new-site` project on your local machine.
* Go into the `docs` directory located at the root of the project repo.
* Run `mkdocs serve` from that directory.
* Visit 127.0.0.0:8000 to view the documentation running from your local server.

You now should be able to make edits, save the file and see the edits you've made whenever you refresh the page. Once you have finished making the edits, be sure to follow our [contribution guidelines](contribution.md) when submitting your pull request! 