require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module RailsPractice
  class Application < Rails::Application
    config.load_defaults 8.0
    config.autoload_lib(ignore: %w[assets tasks])

    # internationalization
    config.i18n.available_locales = [ :en, :ar ]
    config.i18n.default_locale = :en
    config.i18n.fallbacks = true
  end
end
