Racecar.configure do |config|
  # Each config variable can be set using a writer attribute.
  config.brokers = Zetting.kafka_brokers
  config.client_id = "readio_server"
end

Racecar.config.on_error do |exception, _|
  Raven.capture_exception(exception)
end
