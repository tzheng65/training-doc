# Pull latest image
docker_image 'nginx' do
  tag 'latest'
  action :pull
  notifies :redeploy, 'docker_container[my_nginx]'
end

# Run container exposing ports
docker_container 'my_nginx' do
  repo 'nginx'
  tag 'latest'
  port '8123:80'
  host_name 'www'
  domain_name 'bobscrabhut.biz'
  env 'SOMEVAR=bob-loves-crab'
  volumes [ '/some/local/files/:/etc/nginx/conf.d' ]
end