require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module OneShotBackend
  class Application < Rails::Application

	# config.api_only = true
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*' 
        #this allows any origin. for testing purposes this is fine, but for deployment, you'll want to permit your `gh-pages`-deployed front end to interact with your API
        resource '*', :headers => :any, :methods => [:get, :post, :options]
      end

    end
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
