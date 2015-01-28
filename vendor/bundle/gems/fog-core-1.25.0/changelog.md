1.25.0 11/18/2014
==========================================================

add alias options for associations
improve spec message
add feature to overwrite keys on hash of attributes generation
remove method_missing from model
add rubocop
fix rubocop warnings
return collections on association getters
fix require bug in service
put fog and fog-core versions in user agent
don't mutate/destroy encoding in get_body_size
fix error output in from const_get usage
separate to have distinct version from fog


1.24.0 08/26/2014
==========================================================

fixes for defaulting attributes
add method for getting all attributes
add methods for associations
add all_attributes, all_associations and all_associations_and_attributes helper methods
remove no-longer-needed gem update on travis
add all_values
fixes to avoid path conflicts with fog/fog

1.23.0 07/16/2014
==========================================================

attribute whitelisting
abstract out stringify for possible reuse
more specific naming
reorg
add path_prefix
fix time conversion to work with XMLRPC
add more specific per-type attribute tests
lock down rest-client for 1.8.7
allow namespace flipflop for dns
fix identity lookup
better default attribute value setting
bump excon

1.22.0 04/17/2014 1c086852e40e4c1ad7ed138834e4a1505ddb1416
==========================================================

attribute whitelisting
abstract out stringify for possible reuse
more specific naming
reorg
add path_prefix
fix time conversion to work with XMLRPC
add more specific per-type attribute tests
lock down rest-client for 1.8.7
allow namespace flipflop for dns
fix identity lookup
better default attribute value setting
bump excon

1.22.0 04/17/2014 1c086852e40e4c1ad7ed138834e4a1505ddb1416
==========================================================

tests/cleanup/fixes

1.21.1 03/18/2014 3a803405ba60ded421f4bd14677cd3c76cb7e6ab
==========================================================

remove json/xml modules and code
add travis/coveralls
update from upstream
bump/loosen excon dependency
