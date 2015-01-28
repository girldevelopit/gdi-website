# The Meetup Ruby Gem

A Ruby interface to the Meetup.com API.

## Installation
    gem install meetup_client

## Quick Start Guide
This gem is a simple and easy-to-use interface to the Meetup.com API.
The methods you can call with the gem are:

-categories

-checkins

-cities

-events

-members

-messaging

-photos

-profiles

-rsvps

-streams

The parameters for each request have to be passed with a hash (i.e. { category: '1', city: 'London', country: 'GB', status: 'upcoming'} ) 

First, [get a Meetup API key][register].

Then, create a new file config/initializers/meetup_client.rb, and put the following content in it:

```ruby
MeetupClient.configure do |config|
  config.api_key = MEETUP_API_KEY
end
```

[Have a look at the Meetup API website for details about the API] [check_api]

[register]: http://www.meetup.com/meetup_api/key/ 
[check_api]: http://www.meetup.com/meetup_api/

## Usage Examples

**To get events in London about Arts & Culture**

```ruby
    params = { category: '1',
      city: 'London',
      country: 'GB',
      status: 'upcoming',
      format: 'json',
      page: '50'}
    meetup_api = MeetupApi.new
    @events = meetup_api.open_events(params)
```
Any response will be exactly what the Meetup API returns. In the case above, it will be a json containing 
a list of events.

## Supported Ruby Versions
This library aims to support and is [tested against][travis] the following Ruby
implementations:

* Ruby 1.9.2
* Ruby 1.9.3
* Ruby 2.0.0

If something doesn't work on one of these interpreters, it's a bug.

This library may inadvertently work (or seem to work) on other Ruby
implementations, however support will only be provided for the versions listed
above.

If you would like this library to support another Ruby version, you may
volunteer to be a maintainer. Being a maintainer entails making sure all tests
run and pass on that implementation. When something breaks on your
implementation, you will be responsible for providing patches in a timely
fashion. If critical issues for a particular implementation exist at the time
of a major release, support for that Ruby version may be dropped.


## Copyright
Copyright (c) 2013 Cosimo Ranieri.
