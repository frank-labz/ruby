$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'rubocop/airbnb/version'

Gem::Specification.new do |spec|
  spec.name = 'rubocop-franks-airbnb'
  spec.summary = 'Custom code style checking for Frank labs.'
  spec.description = <<-EOF
    A plugin for RuboCop code style enforcing & linting tool. It includes Rubocop configuration
    used at Airbnb and a few custom rules that have cause internal issues at Airbnb but are not
    supported by core Rubocop.
  EOF
  spec.authors = ['Frank Labs Engineering']
  spec.email = ['rubocop@franks.com.br']
  spec.homepage = 'https://github.com/frank-labz/ruby'
  spec.license = 'MIT'
  spec.version = RuboCop::Airbnb::VERSION
  spec.platform = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 2.3'

  spec.require_paths = ['lib']
  spec.files = Dir[
    '{config,lib,spec}/**/*',
    '*.md',
    '*.gemspec',
    'Gemfile',
  ]

  spec.add_dependency('rubocop', '~> 1.12')
  spec.add_dependency('rubocop-performance', '~> 1.10.0')
  spec.add_dependency('rubocop-rails', '~> 2.4.2')
  spec.add_dependency('rubocop-rspec', '~> 1.38.1')
  spec.add_development_dependency('rspec', '~> 3.5')
end
