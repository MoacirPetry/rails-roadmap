Sentry.init do |config|
  config.dsn = 'https://f87c416ad14d4776b4f8f21e30fac88c@o329556.ingest.sentry.io/5975892'
  config.breadcrumbs_logger = [:active_support_logger, :http_logger]

  # Set tracesSampleRate to 1.0 to capture 100%
  # of transactions for performance monitoring.
  # We recommend adjusting this value in production
  config.traces_sample_rate = 0.5
  # or
  config.traces_sampler = lambda do |context|
    true
  end
end