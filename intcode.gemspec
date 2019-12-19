lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "intcode/version"

Gem::Specification.new do |spec|
  spec.name          = "intcode"
  spec.version       = Intcode::VERSION
  spec.authors       = ["Marco Schaden"]
  spec.email         = ["ms@donschado.de"]

  spec.summary       = %q{This is my Intcode implementation}
  spec.description   = %q{It can compute intcode programs}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
