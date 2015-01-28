module Fog
  module Parsers
    module Compute
      module ProfitBricks
        class CreateStorage < Fog::Parsers::ProfitBricks::Base
          def reset
            @response = { 'createStorageResponse' => {} }
          end

          def end_element(name)
            case name
            when 'requestId', 'dataCenterId', 'storageId'
              @response['createStorageResponse'][name] = value
            when 'dataCenterVersion'
              @response['createStorageResponse'][name] = value.to_i
            end
          end
        end
      end
    end
  end
end
