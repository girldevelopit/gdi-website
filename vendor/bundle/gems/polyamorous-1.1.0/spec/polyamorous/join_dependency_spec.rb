require 'spec_helper'

module Polyamorous
  describe JoinDependency do
    if ActiveRecord::VERSION::STRING >= "4.1"
      include_examples "Join Dependency on ActiveRecord 4.1"
    else
      include_examples "Join Dependency on ActiveRecord 3 and 4.0"
    end
  end
end
