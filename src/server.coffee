# Server

#Import modules
http = require 'http'
routing = require './server/routing.coffee'

# Declare an http server
http.createServer(
  # Call function 'logic' of module server
  routing.logic
  # Start the server with information in module server
).listen routing.port, routing.address
