module Fog
  module Parsers
    module Compute
      module ProfitBricks
        class ClearDataCenter < Fog::Parsers::ProfitBricks::Base
          def reset
            @response = { 'clearDataCenterResponse' => {} }
          end

          def end_element(name)
            case name
            when 'requestId', 'dataCenterId'
              @response['clearDataCenterResponse'][name] = value
            when 'dataCenterVersion'
              @response['clearDataCenterResponse'][name] = value.to_i
            end
          end
        end
      end
    end
  end
end
