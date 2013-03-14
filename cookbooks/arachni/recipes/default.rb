arachni_dir = "/opt/arachni"

# Dependencies
package 'build-essential'
package 'libxml2-dev'
package 'libxslt1-dev'
package 'libcurl4-openssl-dev'
package 'libsqlite3-dev'
package 'libyaml-dev'
package 'zlib1g-dev'

directory arachni_dir do
  owner node['arachni']['user']
  group node['arachni']['group']
  mode 0755
  action :create
end

bash "install-arachni" do
  creates "#{arachni_dir}/bin/arachni"
  code <<-EOH
    cd #{arachni_dir}
    wget -q -O - '#{node['arachni']['download_url']}' | tar --strip-components=1 -xzf -
  EOH
  user node['arachni']['user']
end
