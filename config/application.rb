require_relative "boot"
require "rails/all"
require 'psych' # Add this line
Bundler.require(*Rails.groups)

module DogBusinessClub
  class Application < Rails::Application
    config.load_defaults 7.0

    # Enable YAML aliases
    config.before_configuration do
      YAML::ENGINE.yamler = 'psych' if defined?(YAML::ENGINE)
    end
  end
end
