## Installation (Docs)

Wanting to contribute to our lovely documentation? Here are some instructions on how to get the documentation resources setup on your local development environment.

### Before you begin

Make sure that you have pip installed by running `pip --version` from your terminal. If you don't already have pip, you can install it by following the instructions [here](https://pip.pypa.io/en/latest/installing.html#install-pip). pip is The PyPA recommended tool for installing Python packages.

### Setting up your local dev environment for docs

1. Create a fork of the main repo into your personal Github account. To learn more about forking, [read this guide created by Github](https://help.github.com/articles/fork-a-repo/).
2. Open your favorite terminal application and run `git clone https://github.com/your-git-username/gdi-website.git` to clone YOUR repo to your local machine.
3. Now run `cd gdi-website/docs` to enter the documentation directory on your local machine.
4. Run `pip install -r requirements.txt` to install additional packages needed to run the docs server.
4. Run `mkdocs serve` to start the docs server.
5. Visit `127.0.0.0:8000` to view the documentation running from your local server.

You now should be able to make edits, save the file and see the edits you've made whenever you refresh the page. Once you have finished making the edits, be sure to follow our [contribution guidelines](contribution.md) when submitting your pull request!
