# Whatever it is you want to do, it should be handled by the main
# (parent) Makefile. So reissue make from there.
PHONY=check all

#: Default target - the parent's testing or "check" target
all: check

#: Whatever it is you want to do, it should be handled by the parent
%: 
	$(MAKE) -C .. $@
