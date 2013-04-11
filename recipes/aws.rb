include_recipe 'vagrant::default'

case node['vagrant']['aws']['install_type']
when 'package'
  execute 'vagrant plugin install vagrant-aws' do
    not_if "vagrant plugin list |grep -q 'vagrant-aws (#{node['vagrant']['aws']['version']})'"
  end
when 'source'
  git '/opt/vagrant-aws' do
    node['vagrant']['aws']['git_repo']
    node['vagrant']['aws']['git_reference']
  end
end

