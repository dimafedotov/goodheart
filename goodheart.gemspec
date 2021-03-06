# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "goodheart/version"

Gem::Specification.new do |spec|
  spec.name          = "goodheart"
  spec.version       = Goodheart::VERSION
  spec.authors       = ["dimafedotov"]
  spec.email         = ["fedotov2d@gmail.com"]

  spec.summary       = "Clojure interpreter and runtime."
  spec.description   = "Good Heart allows you to put some Clojure right inside you Ruby application."
  spec.homepage      = "https://github.com/dimafedotov/goodheart"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.required_ruby_version = "~> 3.1.1"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject {|f| f.match(%r{^(spec)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = ["goodheart"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.2.29"
  spec.add_development_dependency "byebug", "~> 10.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 1.28"
  spec.add_development_dependency "rubocop-rake", "~> 0.6"
  spec.add_development_dependency "rubocop-rspec", "~> 2.10"
  spec.metadata["rubygems_mfa_required"] = "true"
end
