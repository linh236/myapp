require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Myapp
  class Application < Rails::Application
    config.time_zone = "Asia/Bangkok"
    config.i18n.default_locale = :vn
    config.autoload_paths += %w(#{config.root}/app/models/ckeditor)
    config.i18n.load_path += Dir["#{Rails.root.to_s}/config/locales/**/*.yml"]
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
