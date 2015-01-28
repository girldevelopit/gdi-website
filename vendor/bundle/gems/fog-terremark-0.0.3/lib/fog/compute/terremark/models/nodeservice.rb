module Fog
  module Compute
    class Terremark
      class NodeService < Fog::Model
        identity :Id
        attribute :Name
        attribute :Href
        attribute :Port
        attribute :Description
        attribute :IpAddress
        attribute :Enabled
        attribute :InternetServiceId

        def destroy
          service.delete_node_service(self.Id)
        end

        def save
          requires :Name, :Port, :InternetServiceId
          data = service.add_node_service(
              service_id = self.InternetServiceId,
              ip = self.IpAddress,
              name = self.Name,
              port = self.Port,
              options = {"Enabled" => 'true',
                         "Description" => self.Name,
              }

          )
          merge_attributes(data.body)
          true
        end

        private

        attr_writer :type, :size, :Links

        def href=(new_href)
          self.id = new_href.split('/').last.to_i
        end
      end
    end
  end
end
