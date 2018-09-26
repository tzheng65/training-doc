package 'docker-engine' do
 action :install
end

docker_service 'default' do
  action [:create, :start]
end