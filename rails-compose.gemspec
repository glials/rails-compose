# frozen_string_literal: true

require_relative "lib/rails/compose/version"

Gem::Specification.new do |s|
  s.name        = "rails-compose"
  s.version     = Rails::Compose::VERSION
  s.authors     = ["Daniel Lutz"]
  s.email       = 'dlutz@glials.com'

  s.summary     = "Generate Rails development environments on the fly"
  s.description = "Automatically setup Rails environments using Docker-Compose with Docker or Podman"
  s.homepage    = "https://github.com/glials/rails-compose"
  s.license     = "MIT"

  s.required_ruby_version = ">= 2.6.0"

  s.add_runtime_dependency 'thor', '~> 1.2'

  s.metadata["homepage_uri"]    = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/glials/rails-compose"
  s.metadata["changelog_uri"]   = "https://github.com/glials/rails-compose/CHANGELOG.md"

  s.files       = Dir['lib/rails/compose.rb']
  s.executables << 'rails-compose'
end
