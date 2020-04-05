task :default => [:usage]
task :help => [:usage]
task :build => [:multiarch_build]
task :buildx => [:multiarch_build]
task :b => [:multiarch_build]

CONTAINER_NAME = 'unixorn/doctoc'

task :usage do
  puts 'Usage:'
  puts
  puts 'rake build:      Create a doctoc container'
  puts
end

# Tasks

desc 'Use buildx to make a x86'
task :singleton do
  puts "Building #{CONTAINER_NAME}"
  sh %{ docker buildx build --platform linux/amd64 --push -t #{CONTAINER_NAME} .}
  sh %{ docker pull #{CONTAINER_NAME} }
end

desc 'Use buildx to make a multi-arch container'
task :multiarch_build do
  puts "Building #{CONTAINER_NAME}"
  sh %{ docker buildx build --platform linux/amd64,linux/arm/v7,linux/arm64 --push -t #{CONTAINER_NAME} .}
  sh %{ docker pull #{CONTAINER_NAME} }
end
