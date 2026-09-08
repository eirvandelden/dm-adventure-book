# frozen_string_literal: true

Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # Code is not reloaded between requests.
  config.enable_reloading = false

  # Eager load code on boot for better performance and memory savings (ignored by Rake tasks).
  config.eager_load = true

  # Full error reports are disabled and caching is turned on.
  config.consider_all_requests_local = false
  config.action_controller.perform_caching = true

  # Ensures that a master key has been made available in either ENV["RAILS_MASTER_KEY"]
  # or in config/master.key. This key is used to decrypt credentials (and other encrypted files).
  # config.require_master_key = true

  # Disable serving static files from the `/public` folder by default since
  # Apache or NGINX already handles this.
  config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present?

  # Store uploaded files on the local file system (see config/storage.yml for options).
  config.active_storage.service = :local

  # Force all access to the app over SSL, use Strict-Transport-Security, and use secure cookies.
  # config.force_ssl = true

  # Log to STDOUT by default
  config.logger = ActiveSupport::Logger.new(STDOUT)
    .tap  { |logger| logger.formatter = ::Logger::Formatter.new }
    .then { |logger| ActiveSupport::TaggedLogging.new(logger) }

  # Prepend all log lines with the following tags.
  config.log_tags = [ :request_id ]

  # "info" includes everything from "debug" but suppresses "debug" for production.
  config.log_level = ENV.fetch('RAILS_LOG_LEVEL', 'info')

  # Use a real queuing backend for Active Job (and separate queues per environment).
  # config.active_job.queue_adapter = :resque
  # config.active_job.queue_name_prefix = "dm-adventure-book_#{Rails.env}"

  config.action_mailer.perform_caching = false

  # Ignore bad email addresses and do not raise email delivery errors.
  # Set this to true and configure the email server for immediate delivery to raise delivery errors.
  # config.action_mailer.raise_delivery_errors = false

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation cannot be found).
  config.i18n.fallbacks = true

  # Do not dump schema after migrations.
  config.active_record.dump_schema_after_migration = false

  # Enable Rack::Cache to put a simple HTTP cache in front of your application
  # using the Dalli client for its cache-store.
  dalli_client = Dalli::Client.new((ENV['MEMCACHIER_SERVERS'] || '').split(','),
                                    username: ENV['MEMCACHIER_USERNAME'],
                                    password: ENV['MEMCACHIER_PASSWORD'],
                                    failover: true,
                                    socket_timeout: 1.5,
                                    socket_failure_delay: 0.2,
                                    value_max_bytes: 10_485_760)
  config.cache_store = :dalli_store
  config.action_dispatch.rack_cache = {
    metastore: dalli_client,
    entitystore: dalli_client
  }
  config.static_cache_control = 'public, max-age=311040000'

  config.aws_region = ENV['AWS_REGION']
  config.aws_access_key_id = ENV['AWS_ACCESS_KEY_ID']
  config.aws_secret_access_key = ENV['AWS_SECRET_ACCESS_KEY']
  config.aws_pictures_bucket = ENV['AWS_PICTURES_BUCKET']
  config.aws_attachments_bucket = ENV['AWS_ATTACHMENTS_BUCKET']
end
