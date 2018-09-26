package 'apt-transport-https' do
 action :install
end

package 'ca-certificates' do
 action :install
end

file '/etc/apt/sources.list.d/docker.list' do
 content 'deb https://apt.dockerproject.org/repo ubuntu-trusty main'
end

package 'linux-image-extra-4.2.0-42-generic' do
 action :install
end