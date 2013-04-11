remote_file node['vagrant']['install_file'] do
  source node['vagrant']['download_url']
  action :create_if_missing
end

if node['vagrant']['pkg_provider']
  package 'vagrant' do
    source node['vagrant']['install_file']
    provider node['vagrant']['pkg_provider']
  end
end
