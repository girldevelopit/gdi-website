## Frequently Asked Questions

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