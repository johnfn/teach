express = require 'express'
fs = require 'fs'

app = express.createServer express.logger()

app.set "view options", layout : false
app.set 'view engine', 'coffee'

app.use(express.static __dirname + "/public")

app.register '.coffee', require('coffeekup').adapters.express

app.get '/', (request, response) ->
  response.render 'index'

app.get '/tutorial', (request, response) ->
  response.render 'tutorial'

port = process.env.PORT || 3456
app.listen port, () ->
  console.log "Listening on http://localhost:#{port}"

