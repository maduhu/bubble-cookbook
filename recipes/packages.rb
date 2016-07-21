# Packages for virt-manager and kvm
%w(epel-release centos-release-qemu-ev vlgothic-fonts adwaita-gtk3-theme kvm
   virt-manager libvirt virt-install qemu-kvm xauth dejavu-lgc-sans-fonts).each do |pkg|
  package pkg do
    action :install
  end
end

# Extra tools
%w(git virt-top screen vim openssh-askpass supervisor deltarpm sshpass byobu bash-completion nmap).each do |pkg|
  package pkg do
    action :install
  end
end

# libguestfs-tools for manipulating images
%w(libguestfs-tools).each do |pkg|
  package pkg do
    action :install
  end
end

# Python packages for the deploy scripts
%w(python-pip python-bottle python-argparse python-jinja2).each do |pkg|
  package pkg do
    action :install
  end
end

# Packages for running marvin (compile scripts) on the bubble itself
%w(maven python-paramiko ws-commons-util genisoimage gcc python MySQL-python mariadb mysql-connector-python
   ).each do |pkg|
  package pkg do
    action :install
  end
end

# required java & tools
%w(apache-commons-daemon-jsvc java-1.8.0-openjdk-devel.x86_64 libffi-devel).each do |pkg|
  package pkg do
    action :install
  end
end

# tools & clients
%w(mariadb-server nc nfs-utils openssh-clients openssl-devel rpm-build setroubleshoot wget).each do |pkg|
  package pkg do
    action :install
  end
end

# python & ruby tooling
%w(python-devel python-ecdsa python-setuptools rubygems).each do |pkg|
  package pkg do
    action :install
  end
end

