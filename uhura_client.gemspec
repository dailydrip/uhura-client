# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'uhura_client/version'

Gem::Specification.new do |spec|
  spec.name          = 'uhura_client'
  spec.version       = UhuraClient::VERSION
  spec.authors       = ['SmoothTerminal']
  spec.email         = ['devs@smoothterminal.com']

  spec.summary       = 'Ruby gem for Uhura.'
  spec.description   = 'Rubey gem for the Uhura system'
  spec.homepage      = 'https://github.com/dailydrip/uhura-client'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Development Dependencies

  spec.add_development_dependency 'bundler', '~> 2.0.2'
  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'rake', '~> 13.0.1'
  spec.add_development_dependency 'rspec', '~> 3.8'
  spec.add_development_dependency 'rubocop'

  # Dependencies
  spec.add_dependency 'faraday'
  spec.add_dependency 'faraday_middleware'
  spec.add_dependency 'json'
end
