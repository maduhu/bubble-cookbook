# Packages for virt-manager and kvm
package %w(epel-release centos-release-qemu-ev vlgothic-fonts adwaita-gtk3-theme
           kvm virt-manager libvirt virt-install qemu-kvm xauth
           dejavu-lgc-sans-fonts) do
  action :install
end

# Extra tools
package %w(git virt-top screen vim openssh-askpass supervisor deltarpm sshpass
           byobu bash-completion nmap) do
  action :install
end

# libguestfs-tools for manipulating images
package %w(libguestfs-tools) do
  action :install
end

# Python packages for the deploy scripts
package %w(python-pip python-bottle python-argparse python-jinja2) do
  action :install
end

# Packages for running marvin (compile scripts) on the bubble itself
# remove maven yum package if present
package 'maven' do
  action :remove
end
include_recipe 'maven::default'

package %w(python-paramiko ws-commons-util genisoimage gcc python MySQL-python
           mariadb mysql-connector-python) do
  action :install
end

# required java & tools
# Upgrade openjdk to 'latest' due to enhanced crypto support
package 'java-1.8.0-openjdk-devel.x86_64' do
  action :upgrade
end

package %w(apache-commons-daemon-jsvc libffi-devel) do
  action :install
end

# tools & clients
package %w(mariadb-server nc nfs-utils openssh-clients openssl-devel rpm-build
           setroubleshoot wget) do
  action :install
end

# python & ruby tooling
package %w(python-devel python-ecdsa python-setuptools rubygems) do
  action :install
end
