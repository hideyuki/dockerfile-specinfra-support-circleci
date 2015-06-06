require "docker"
require "serverspec"

if ENV['CIRCLECI']
  class Docker::Container
    def remove(options={})
      # do not delete container
    end
    alias_method :delete, :remove
  end
end

set :backend, :docker
set :docker_url, ENV["DOCKER_HOST"]
set :docker_image, "specinfra_test"
set :os, :family => 'ubuntu', :arch => 'x86_64'

