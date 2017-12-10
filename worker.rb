require 'sidekiq'

Sidekiq.configure_client do |config|
  config.redis = { db: 1 }
end

Sidekiq.configure_server do |config|
  config.redis = { db: 1 }
end

class PlayWorker
  include Sidekiq::Worker

  def perform(complexity)
    case complexity
    when "high"
      # Simulate work complexity with sleep
      sleep 20
      puts "That was hard work!"
    when "low"
      sleep 10
      puts "Low complexity work!"
    end
  end
end
