require 'bunny'

connection = Bunny.new(automatically_recover: false)
connection.start

channel = connection.create_channel
queue = channel.queue('hello')

channel.default_exchange.publish('Test!', routing_key: queue.name)
puts " [x] Sent 'Hello World!'"

connection.close