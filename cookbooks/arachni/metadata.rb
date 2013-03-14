name              "arachni"
maintainer        "Brandon Turner, Rapid7, Inc."
maintainer_email  "brandon_turner@rapid7.com"
license           "BSD"
description       "Installs/Configures Arachni web application security framework"
version           "0.1.0"

%w{ debian ubuntu }.each do |os|
  supports os
end

recipe "arachni::default", "Installs and configures arachni"
