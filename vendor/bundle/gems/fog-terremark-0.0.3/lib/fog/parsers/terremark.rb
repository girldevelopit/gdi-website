module Fog
  module Parsers
    module Terremark
      autoload :Base, 'fog/parsers/terremark/base'
      autoload :GetCatalog, 'fog/parsers/terremark/get_catalog'
      autoload :GetCatalogItem, 'fog/parsers/terremark/get_catalog_item'
      autoload :GetInternetServices, 'fog/parsers/terremark/get_internet_services'
      autoload :GetKeysList, 'fog/parsers/terremark/get_keys_list'
      autoload :GetNetworkIps, 'fog/parsers/terremark/get_network_ips'
      autoload :GetNodeServices, 'fog/parsers/terremark/get_node_services'
      autoload :GetOrganization, 'fog/parsers/terremark/get_organization'
      autoload :GetOrganizations, 'fog/parsers/terremark/get_organizations'
      autoload :GetPublicIps, 'fog/parsers/terremark/get_public_ips'
      autoload :GetTasksList, 'fog/parsers/terremark/get_tasks_list'
      autoload :GetVappTemplate, 'fog/parsers/terremark/get_vapp_template'
      autoload :GetVdc, 'fog/parsers/terremark/get_vdc'
      autoload :InstantiateVappTemplate, 'fog/parsers/terremark/instantiate_vapp_template'
      autoload :InternetService, 'fog/parsers/terremark/internet_service'
      autoload :Network, 'fog/parsers/terremark/network'
      autoload :NodeService, 'fog/parsers/terremark/node_service'
      autoload :PublicIp, 'fog/parsers/terremark/public_ip'
      autoload :Task, 'fog/parsers/terremark/task'
      autoload :Vapp, 'fog/parsers/terremark/vapp'
    end
  end
end
