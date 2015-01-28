### 0.7.0 / 2014-11-27

Enhancements:

* Can read `Link` headers returned from snapshot actions
* Optionally allow return or `Snapshot` objects from snapshot actions.

Bug fixes:

* Ignore select directories from version control.
* Removed duplicate spec_helper
* Addition of style rules using `rubocop`
* Automated clean up of style rules
* Be pessimistic about `inflecto` gem.
  Next release of Inflecto gem will introduce 1.9 constraint so we need to be
  pessimistic about the version to depend on for now.

### 0.6.1 / 2014-10-22

Bug fixes:

* Fixes reading from `Server#ssl3?`

### 0.6.0 / 2014-10-21

Enhancements:

* Allow setting of Load Balancer SSL v3 parameter when creating or updating.

### 0.5.1 / 2014-09-15

Bug fixes:

* Fix a possible authentication loop when bad credentials or expired tokens
  would trigger repeated attempts to authenticate with no changes to the
  bad credentials.

### 0.5.0 / 2014-09-01

Enhancements:

* Allow setting of Load Balancer buffer sizes during create and update calls.

### 0.4.1 / 2014-08-28

Bug fixes:

* Default updated to final hostname of `orbit.brightbox.com`.

### 0.4.0 / 2014-08-28

Enhancements:

* Add Add support for Brightbox Orbit cloud storage service. This adds a
  `storage` service to the Brightbox provider using the standard `fog`
  interfaces.

### 0.3.0 / 2014-08-12

Enhancements:

* Use improved reset and reboot requests for the `Server#reboot` method
  allowing requests without having to fake restarts with a start/stop. This
  keeps the VNC console active.

### 0.2.0 / 2014-08-07

Enhancements:

* Add resource locks to prevent accidental deleting of the following resources:
  * Database servers
  * Database snapshots
  * Images
  * Load balancers
  * Servers

### 0.1.1 / 2014-06-26

Bug fixes:

* Fix `list_events` options to have workable defaults

### 0.1.0 / 2014-06-25

Enhancements:

* Add `pry` as a development dependency so available under Bundler
* Add `spec_helper` to DRY out requires on start of tests
* Add `Fog::Brightbox::Model` layer to add shared functionality between models
* Add `#resource_name` and `#collection_name` inflection methods to models
* Add basic specs for models

Changes:

* Update generated documentation for requests

Bug fixes:

* Fix `rake:spec` task to add "spec" to LOAD_PATH

### 0.1.0.dev2 / 2014-04-22

This PRERELEASE version may contain functionality that may be removed before
the next release so all APIs should be considered unstable and you should lock
to the exact version if used!

Bug fixes:

* Reference fog-core-v1.22 rather than "master" branch now it is released.

### 0.1.0.dev1 / 2014-04-10

Enhancements:

* Add support for events feed

### 0.0.2 / 2014-04-10

Bug fixes:

* Add CHANGELOG.md to `fog-brightbox` module.
* Add MiniTest::Specs to project. Use `rake test` to check the code.
* Add Gemfile, Rakefile, README and LICENCE to start documenting project.
* Remove redundant calls to `Fog.credentials`. The code flow was such that the
  credentials were being passed in to `Fog::Compute::Brightbox` anyway.
* Isolate testing from contents of `~.fog` file which is leaking in throug the
  `Fog.credentials` global.

### 0.0.1 / 2014-02-19

Enhancements:

* Initial release of extracted `fog-brightbox` module. This is pretty much the
  pilot for fog modules so bear with us as we iron out the bugs.
