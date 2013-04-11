default['vagrant']['hash'] = '64e360814c3ad960d810456add977fd4c7d47ce6'

case node.platform_family
when 'debian'
  node.set['vagrant']['download_url'] = "http://files.vagrantup.com/packages/#{node['vagrant']['hash']}/vagrant_#{node['kernel']['machine']}.deb"
  node.set['vagrant']['install_file'] = "#{Chef::Config[:file_cache_path]}/vagrant-#{node['vagrant']['hash']}.deb"
  node.set['vagrant']['pkg_provider'] = Chef::Provider::Package::Dpkg
when 'rhel'
  node.set['vagrant']['download_url'] = "http://files.vagrantup.com/packages/#{node['vagrant']['hash']}/vagrant_#{node['kernel']['machine']}.rpm"
  node.set['vagrant']['install_file'] = "#{Chef::Config[:file_cache_path]}/vagrant-#{node['vagrant']['hash']}.rpm"
  node.set['vagrant']['pkg_provider'] = Chef::Provider::Package::Rpm
end
