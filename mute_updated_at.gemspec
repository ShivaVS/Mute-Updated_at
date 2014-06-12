$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mute_updated_at/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "mute_updated_at"
  s.version     = MuteUpdatedAt::VERSION
  s.authors     = "Shiva S"
  s.email       = "shiva.vs_india@yahoo.com"
  s.homepage    = "https://github.com/ShivaVS/Mute-Updated_at"
  s.summary     = "dont update updated_at field"
  s.description = "Description of MuteUpdatedAt dont update updated_at field."
  s.add_development_dependency "ruby", "~> 1.9"
  s.add_development_dependency "bundler", "~> 1.3"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

end
