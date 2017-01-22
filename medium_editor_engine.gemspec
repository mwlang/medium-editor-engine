$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "medium_editor/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |gem|
  gem.name        = "medium-editor-engine"
  gem.version     = MediumEditor::VERSION
  gem.authors     = ["Michael Lang"]
  gem.email       = ["mwlang@cybrains.net"]
  gem.homepage    = "https://github.com/mwlang/medium-editor-engine"
  gem.summary     = %q{Medium Editor integrated as a Rails Engine}
  gem.description = gem.summary
  gem.license     = "MIT"

  gem.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  gem.test_files = Dir["spec/**/*"]

  gem.add_dependency 'rails', '>= 3.0'
  gem.add_dependency 'sass-rails'

  gem.add_dependency 'jquery-rails'
  gem.add_dependency 'jquery-ui-rails'
  gem.add_dependency 'jquery-fileupload-rails'
  gem.add_dependency 'medium-editor-rails'
  gem.add_dependency 'medium-editor-insert-plugin-rails'

  gem.add_development_dependency 'bundler', '~> 1.0'
  gem.add_development_dependency "sqlite3"
  gem.add_development_dependency "rake", "~> 10.5.0"
  gem.add_development_dependency "rspec", "~> 3.5.0"
  gem.add_development_dependency "rspec-its", "~> 1.2.0"
  gem.add_development_dependency "simplecov"
  gem.add_development_dependency "guard"
  gem.add_development_dependency "guard-rspec"
  gem.add_development_dependency 'factory_girl_rails'
end
