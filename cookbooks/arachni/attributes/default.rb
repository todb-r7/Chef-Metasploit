default['arachni']['version'] = '0.4.1.3'
case node['os']
when 'linux'
  case node['kernel']['machine']
  when 'x86_64'
    default['arachni']['arch'] = 'linux-x86_64'
  else
    default['arachni']['arch'] = 'linux-i386'
  end
when 'darwin'
  default['arachni']['arch'] = 'darwin-x86_64'
end
default['arachni']['download_url'] = "http://downloads.arachni-scanner.com/arachni-#{node['arachni']['version']}-#{node['arachni']['arch']}.tar.gz"

default['arachni']['user'] = 'msbuilder'
default['arachni']['group'] = 'msbuilder'
