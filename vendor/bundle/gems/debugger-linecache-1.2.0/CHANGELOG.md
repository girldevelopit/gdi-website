## 1.2.0
* Replace C extension with ruby 
* No more debugger-ruby_core_source dependency

## 1.1.2
* Fix rdoc/ri warning

## 1.1.1
* Depend on working version of debugger-ruby-core-source

## 1.1.0
* Point to new debugger-ruby_core_source API
* rename trace_nums19 ext to trace_nums
* Renable Rakefile and tests
* General cleanup

## 1.0.1
* Point to debugger-ruby_core_source as dependency

## 1.0.0
* Initial release - fork and release latest linecache

## From previous gem's NEWS file

0.5 (7/23/09)
- updated for Ruby 1.9

0.43
06-12-08
- tolerance for finding windows extension in lib rather than ext.

0.41 
- add test/data/* to gem.

0.4
- Credit Ryan Davis and ParseTree.

0.3
- Add tracelines: get line numbers that can be stopped at.

- Add routines to allow line-number 
  remapping and filename remapping. 

- Add access methods to get the number of lines in a file.

0.2
- Make this work with ruby-debug-base. Add reload-on-change parameters.
  add checkcache, cache, cached? sha1, and stat methods. 
  
- Use SCRIPT_LINES__.

0.1

- Initial release of LineCache, a module for reading and caching lines.
