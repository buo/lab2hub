# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lab2hub/version'

Gem::Specification.new do |spec|
  spec.name          = "lab2hub"
  spec.version       = Lab2hub::VERSION
  spec.authors       = ["buo"]
  spec.email         = ["buo@users.noreply.github.com"]

  spec.summary       = %q{Easily migrate your projects from GitLab to GitHub.}
  spec.description   = %q{lab2hub helps you migrate your projects from GitLab to GitHub easily.}
  spec.homepage      = "https://github.com/buo/lab2hub"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "github_api", "~> 0.14"
  spec.add_development_dependency "gitlab", "~> 3.6"
end
