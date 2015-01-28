### Compute Examples

These examples all assume you have `~/.fog` which contains the following

   ```yaml  
default:
  softlayer_username: example-username
  softlayer_api_key: 1a1a1a1a1a1a1a1a1a11a1a1a1a1a1a1a1a1a1 
  softlayer_default_domain: example.com
  ```
  
#### Create a connection to SoftLayer Compute Service

```ruby
	require 'fog/softlayer'
	@sl = Fog::Compute[:softlayer]
```

#### Use the Models
1. List all servers

   ```ruby
   @sl.servers # list all servers
   @sl.servers.size # get a count of all servers 
   ```

1. Get a server's details

   ```ruby
   server = @sl.servers.get(<server id>)
   server.name # => 'hostname.example.com'
   server.created_at # => DateTime the server was created
   server.state # => 'Running', 'Stopped', 'Terminated', etc.
   ```

1. Get all servers tagged with certain tags.

	```ruby
	prod_fe_servers = @sl.servers.tagged_with(['production', 'frontend'])
	# => [ <Fog::Compute::Softlayer::Server>,
	#	<Fog::Compute::Softlayer::Server>,
	#	<Fog::Compute::Softlayer::Server>,
	#	<Fog::Compute::Softlayer::Server>,
	#	<Fog::Compute::Softlayer::Server>,]		
	```
   
1. Get a server's public/frontend VLAN

	```ruby
	server = @sl.servers.get(12345)
	server.vlan
	# => <Fog::Network::Softlayer::Network
    #	id=123456,
	#   name='frontend-staging-vlan',
	#   modify_date="2014-02-22T12:42:31-06:00",
	#   note=nil,
	#   tags=['sparkle', 'motion'],
	#   type="STANDARD",
	#   datacenter=    <Fog::Network::Softlayer::Datacenter
	#     id=168642,
	#     long_name="San Jose 1",
	#     name="sjc01"
	#   >,
	#   network_space="PUBLIC",
	#   router={"hostname"=>"fcr01a.sjc01", "id"=>82412, "datacenter"=>{"id"=>168642, "longName"=>"San Jose 1", "name"=>"sjc01"}}
  	# >
	```
	
1. Get a server's private/backend VLAN

	```ruby
	server = @sl.servers.get(12345)
	server.private_vlan
	# =>  <Fog::Network::Softlayer::Network
	#    id=123456,
	#    name='backend-staging-vlan',
	#    modify_date="2014-02-22T12:42:33-06:00",
	#    note=nil,
	#    tags=[],
	#    type="STANDARD",
	#    datacenter=    <Fog::Network::Softlayer::Datacenter
	#	    id=168642,
	#    	long_name="San Jose 1",
	#    	name="sjc01"
	#   >,
	#   network_space="PRIVATE",
    #	router={"hostname"=>"bcr01a.sjc01", "id"=>82461, "datacenter"=>{"id"=>168642, "longName"=>"San Jose 1", "name"=>"sjc01"}}
  	# >
	
	```
	
1. Get a server's tags

	```ruby
		server = @sl.servers.get(12345)
		server.tags
		# => ['production', 'frontend']
	```
	
1. Add tags to a server

	```ruby
		server = @sl.servers.get(12345)
		server.tags
		# => ['production', 'frontend']
		server.add_tags(['sparkle', 'motion']
		# => true
		server.tags
		# => ['production', 'frontend', 'sparkle', 'motion']
	```

1. Delete tags from a server

	```ruby
		server = @sl.servers.get(12345)
		server.tags
		# => ['production', 'frontend', 'sparkle', 'motion']
		server.delete_tags(['sparkle', 'motion']
		# => true
		server.tags
		# => ['production', 'frontend']
	```

1. Provision a new VM with flavor (simple).

   ```ruby
     opts = {
     	:flavor_id => "m1.small",
     	:image_id => "23f7f05f-3657-4330-8772-329ed2e816bc",
     	:name => "test",
     	:datacenter => "ams01"
     }
     new_server = @sl.servers.create(opts)
     new_server.id # => 1337
   ```

1. Provision a new Bare Metal instance with flavor (simple).

   ```ruby
     opts = {
     	:flavor_id => "m1.small",
     	:os_code => "UBUNTU_LATEST",
     	:name => "test1",
     	:datacenter => "ams01",
     	:bare_metal => true
     }
     @sl.servers.create(opts)
     new_server.id # => 1338
   ```

1. Provision a new VM without flavor.

   ```ruby
   	opts = {
     	:cpu => 2,
     	:ram => 2048,     	
     	:disk => [{'device' => 0, 'diskImage' => {'capacity' => 100 } }],
     	:ephemeral_storage => true,
     	:domain => "not-my-default.com",
     	:name => "hostname",
     	:os_code => "UBUNTU_LATEST",
     	:name => "test2",
     	:datacenter => "ams01"     
     }
   ```

1. Provision a Bare Metal Instance without a flavor

   ```ruby
   opts = {
     	:cpu => 8,
     	:ram => 16348,     	
     	:disk => {'capacity' => 100 },
     	:ephemeral_storage => true,
     	:domain => "not-my-default.com",
     	:name => "hostname",
     	:os_code => "UBUNTU_LATEST",
     	:name => "test2",
     	:datacenter => "ams01",
     	:bare_metal => true
     }
   ```

1. Create a server with one or more key pairs (also see [key_pairs.md](./key_pairs.md) )

	```ruby
	the_first_key = @sl.key_pairs.by_label('my-new-key')
	# => <Fog::Compute::Softlayer::KeyPair>
	the_second_key = @sl.key_pairs.by_label('my-other-new-key')
	# => <Fog::Compute::Softlayer::KeyPair>
	
	opts = { 
		:flavor_id => 'm1.small', 
		:os_code => 'UBUNTU_LATEST', 
		:datacenter => 'hkg02', 
		:name => 'cphrmky', 
		:key_pairs => [ the_first_key, the_second_key ]
	}
	@sl.servers.create(opts)
	# => <Fog::Compute::Softlayer::Server>
```


1. Delete a VM or Bare Metal instance.

   ```ruby
   	  @sl.servers.get(<server id>).destroy
   ```
   
1. Provision a Server (works the same for VM and Bare Metal) into a specific VLAN

	```ruby
	# I want to launch another server to hold docker containers into my existing staging VLANs
	# I'll start by getting a staging server so I can use its vlans as a reference.
	staging_server = @sl.servers.tagged_with(['staging', 'docker']).first # => <Fog::Compute::Softlayer::Server>
	
	opts = {
	  :flavor_id => 'm1.large', 
	  :image_id => '23f7f05f-3657-4330-8772-329ed2e816bc',  # Ubuntu Docker Image
	  :domain => 'staging.example.com',
	  :datacenter => 'ams01', # This needs to be the same datacenter as the target VLAN of course.
	  :name => 'additional-docker-host',
	  :vlan => staging.server.vlan, # Passing in a <Fog::Network::Softlayer::Network> object.
	  :private_vlan => staging.server.private_vlan.id, # Passing in an Integer (the id of a network/vlan) works too. 
	}

	new_staging_server = @sl.servers.create(opts)
	# => <Fog::Compute::Softlayer::Server>
	
	
	```
	
1. Provision a Server with only a private network.

	```ruby
	opts = {
	  :flavor_id => 'm1.large', 
	  :os_code => 'UBUNTU_LATEST',
	  :domain => 'example.com',
	  :datacenter => 'ams01',
	  :name => 'private-eye',
	  :private_network_only => true
	}
	
	private_vm = @sl.servers.create(opts)
	# => <Fog::Compute::Softlayer::Server>
	```
1. Provision a Server with 1Gbps network components.

	```ruby
	opts = {
	  :flavor_id => 'm1.large', 
	  :os_code => 'UBUNTU_LATEST',
	  :domain => 'example.com',
	  :datacenter => 'wdc01',
	  :name => 'speedy-tubes',
	  :network_components => [ {:speed => 1000 } ],
	}
	
	private_vm = @sl.servers.create(opts)
	# => <Fog::Compute::Softlayer::Server>
	```

1. Provision a Server with user metadata.

   ```ruby
     opts = {
      :flavor_id => "m1.small",
      :image_id => "23f7f05f-3657-4330-8772-329ed2e816bc",
      :name => "test",
      :datacenter => "ams01",
      :user_data => "my-custom-user-metadata"
     }

     new_server = @sl.servers.create(opts)
     new_server.user_data # => "my-custom-user-metadata"
     new_server.user_data = "new-user-metadata"
     new_server.user_data # => "new-user-metadata"
   ```
