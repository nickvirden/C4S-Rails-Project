require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsProj
    class Application < Rails::Application
        # Settings in config/environments/* take precedence over those specified here.
        # Application configuration should go into files in config/initializers
        # -- all .rb files in that directory are automatically loaded.

        # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
        # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
        # config.time_zone = 'Central Time (US & Canada)'

        # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
        # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
        # config.i18n.default_locale = :de

        # Do not swallow errors in after_commit/after_rollback callbacks.
        config.active_record.raise_in_transactional_callbacks = true
    end

    # Contact Form Validation Fields and Email Format
    #class Contact < MailForm::Base
    #    attribute :name,      :validate => true
    #    attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
    #    attribute :subject    :validate => true
    #    attribute :message
    #    attribute :nickname,  :captcha  => true

        # Declare the e-mail headers. It accepts anything the mail method
        # in ActionMailer accepts.
    #    def headers
    #      {
    #        :subject => %("#{subject}"),
    #        :to => GMAIL_USERNAME,
    #        :from => %("#{name}" <#{email}>)
    #      }
    #    end
    #end
end
