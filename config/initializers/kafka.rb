require 'kafka'

kafka = Kafka.new(seed_brokers: ['172.17.190.235:9092'])

KafkaProducer = kafka.async_producer(
  delivery_threshold: 10,
  delivery_interval: 5
)
