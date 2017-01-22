require 'jquery-rails'
require 'jquery-ui-rails'
require 'jquery-fileupload-rails'

require "medium-editor-rails"
require "medium-editor-insert-plugin-rails"

module MediumEditor
  class Engine < ::Rails::Engine
    isolate_namespace MediumEditor

    config.generators do |g|
      g.test_framework :rspec, :fixture => false
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
      g.assets false
      g.helper false
    end
  end
end
