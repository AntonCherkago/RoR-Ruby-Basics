lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "convert_to_html/version"

Gem::Specification.new do |spec|
  spec.name          = "convert_to_html"
  spec.version       = '0.1.0'
  spec.authors       = ["AntonCherkago"]
  spec.email         = ["antonkonovalov167@gmail.com"]

  spec.summary       = 'ConvertToHtml - gem for accepting content and stores it in an .html page'
  spec.description   = 'simple gem for creating method that accepts content and stores the transmitted content in an .html page'
  spec.homepage      = 'https://github.com/AntonCherkago/RoR-Ruby-Basics/tree/master/3%20lesson'

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  #spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."
    # Specify which files should be added to the gem when it is released.
    # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end