# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'how_fast/version'

Gem::Specification.new do |spec|
  spec.name          = "how_fast"
  spec.version       = HowFast::VERSION
  spec.date          = "2016-05-25"
  spec.authors       = ["Christian Whitesides"]
  spec.email         = ["whitesidescr@gmail.com"]

  spec.summary       = "HowFast is a simple CLI gem to show you your current download speed."
  spec.homepage      = "https://github.com/crwhitesides/how-fast-cli-gem"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "poltergeist"
end
