if node.chef_environment != nil then
  begin
    include_recipe "environment_#{node.environment}"
  rescue Exception => importExc
    Chef::Log.warn("Unable to import recipe environment_#{node.environment}: #{importExc.to_s}")
  end
end
