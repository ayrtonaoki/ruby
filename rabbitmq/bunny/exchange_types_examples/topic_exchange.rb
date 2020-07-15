require 'rubygems'
require 'bunny'

connection = Bunny.new

connection.start

channel = connection.create_channel
exchange = channel.topic('news', auto_delete: true)

channel.queue('', exclusive: true).bind(exchange, routing_key: 'sports.football.spain').
  subscribe do |info, metadata, payload|
    puts "In Spain, #{payload}, routing_key: #{info.routing_key}"
  end

channel.queue('', exclusive: true).bind(exchange, routing_key: 'sports.football.#').
  subscribe do |info, metadata, payload|
    puts "World football: #{payload}, routing_key: #{info.routing_key}"
  end

channel.queue('', exclusive: true).bind(exchange, routing_key: 'sports.#').
  subscribe do |info, metadata, payload|
    puts "Sports: #{}, routing_key: #{info.routing_key}"
  end

exchange.publish("Barcelona shows they new 20/21 season's kit", routing_key: 'sports.football.spain')
exchange.publish('UCL 2020 returns in August', routing_key: 'sports.football.champions_league')
exchange.publish('F1 next GP in Hungry and NFL teams back to trainning', routing_key: 'sports')

sleep 1

connection.close