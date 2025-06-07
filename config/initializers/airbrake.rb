Airbrake.configure do |config|
  config.error_host = "https://errbit.shadbox.com"
  config.project_id = 1 # required, but any positive integer works
  config.project_key = "83b545df21485175e1a20c502c0672dd"

  # airbrake.io supports various features that are out of scope for
  # Errbit. Disable them:
  config.job_stats = false
  config.query_stats = false
  config.performance_stats = false
  config.remote_config = false
end