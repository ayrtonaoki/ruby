require 'bunny'
require 'json'

conn = Bunny.new
conn.start

ch = conn.create_channel
ch.default_exchange.publish({ type: 'error', message: 'HALP!', error: 'CODE001' }.to_json, routing_key: 'logs')

conn.close