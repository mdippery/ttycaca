# -*- encoding: utf-8 -*-

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'ttycaca/version'

Gem::Specification.new do |gem|
  gem.name        = 'ttycaca'
  gem.version     = Ttycaca::VERSION
  gem.licenses    = ['MIT']
  gem.authors     = ['Michael Dippery']
  gem.email       = ['michael@monkey-robot.com']
  gem.homepage    = 'https://github.com/mdippery/ttycaca'
  gem.summary     = 'Probe the terminal for information'
  gem.description = 'An interface for querying the console for information about itself'

  gem.metadata    = {
    'build_date'  => Time.now.strftime('%Y-%m-%d %H:%M:%S %Z'),
    'commit'      => `git describe`.chomp,
    'commit_hash' => `git rev-parse HEAD`.chomp,
  }

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.required_ruby_version = '>= 1.9.3'

  gem.add_runtime_dependency('highline', '~> 2.0')

  gem.add_development_dependency('rspec', '~> 3.4')
end
