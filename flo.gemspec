# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'flo/version'

Gem::Specification.new do |spec|
  spec.name          = "flo"
  spec.version       = Flo::VERSION
  spec.authors       = ["Phil Calvin"]
  spec.email         = ["phil@philcalvin.com"]
  spec.description   = %q{List a summary of your Amazon SWF workflow failures}
  spec.summary       = %q{Summarize failed executions for a given Amazon Simple Workflow domain}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "aws-sdk", "< 2"
  spec.add_dependency "trollop"
  spec.add_dependency "peach"
  spec.add_dependency "activesupport"
end
