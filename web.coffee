express   = require 'express'
coffeekup = require 'coffeekup'
fs        = require 'fs'
stylus    = require 'stylus'
nib       = require 'nib'

app = express.createServer express.logger()

app.configure ->
  @set "view options", layout: false
  @set 'view engine', 'coffee'
  @register '.coffee', coffeekup.adapters.express
  @use express.bodyParser()
  @use express.methodOverride()
  @use stylus.middleware
    src     : "#{__dirname}/public"
    compile : (str, path) ->
      stylus(str)
        .set('filename', path)
        .set('compress', true)
        .use(nib())
        .import 'nib'
  @use express.static("#{__dirname}/public")
  @use @router

app.get '/', (request, response) ->
  response.render 'index'

app.get '/tutorial', (request, response) ->
  response.render 'tutorial'

port = process.env.PORT || 3456
app.listen port, () ->
  console.log "Listening on http://localhost:#{port}"

