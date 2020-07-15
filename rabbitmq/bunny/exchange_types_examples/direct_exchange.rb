require "rubygems"
require "bunny"

connection = Bunny.new
connection.start

channel = connection.create_channel
exchange  = channel.default_exchange

channel.queue('ayrton', auto_delete: true).subscribe do |delivery_info, metadata, payload|
  puts "Ayrton received #{payload} ad"
end
channel.queue('giovanni', auto_delete: true).subscribe do |delivery_info, metadata, payload|
  puts "Giovanni received #{payload} ad"
end

exchange.publish("Santos", routing_key: 'ayrton')
exchange.publish("Pokemon", routing_key: 'giovanni')

sleep 1.0
connection.close