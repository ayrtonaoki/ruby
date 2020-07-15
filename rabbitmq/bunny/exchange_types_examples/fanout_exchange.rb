require 'rubygems'
require 'bunny'

connection = Bunny.new
connection.start

channel = connection.create_channel

exchange = channel.fanout('twitter')

channel.queue('ayrton', auto_delete: true).bind(exchange).subscribe do |delivery_info, metadata, payload|
  puts "Ayrton twitt: #{payload}"
end

channel.queue('giovani', auto_delete: true).bind(exchange).subscribe do |delivery_info, metadata, payload|
  puts "Giovanni twitt: #{payload}"
end

exchange.publish('Eu trabalho na Voll Solutions')

sleep 1

connection.close