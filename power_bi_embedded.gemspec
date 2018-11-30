$:.push File.expand_path("../lib", __FILE__)

require "power_bi_embedded/version"

Gem::Specification.new do |spec|
  spec.name          = "power_bi_embedded"
  spec.version       = PowerBiEmbedded::VERSION
  spec.required_ruby_version = '>= 2.5.0'
  spec.authors       = ["Henrique Januário"]
  spec.homepage      = "https://github.com/henriqjanuario/power-bi-embedded"
  spec.email         = ["riquejanuario@gmail.com"]
  spec.summary       = "Gem to consume Microsoft's PowerBiEmbedded RESTfull API"
  spec.description   = ""
  spec.license       = "MIT"

  spec.files         = Dir['lib/**/*']
  spec.test_files    = Dir["test/**/*"]

  spec.add_dependency 'httparty', '~> 0.16'

  spec.add_development_dependency 'sqlite3', '~> 1.3'
end