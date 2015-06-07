require "sidekiq"

Sidekiq.configure_client do |config|
  config.redis = { url: ENV["REDIS_URL"], namespace: ENV["SIDEKIQ_NAMESPACE"] }
end

require "sidekiq/web"
run Sidekiq::Web
