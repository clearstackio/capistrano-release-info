# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/release-info/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-release-info"
  spec.version       = Capistrano::ReleaseInfo::VERSION
  spec.authors       = ["Ajaya Agrawalla"]
  spec.email         = ["ajaya@clearstack.io"]
  spec.summary       = %q{ReleaseInfo support for Capistrano 3.x}
  spec.description   = %q{ReleaseInfo support for Capistrano 3.x}
  spec.homepage      = "https://github.com/codetheoryio/capistrano-release-info"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "capistrano", "~> 3.0"
  spec.add_dependency "rails"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
