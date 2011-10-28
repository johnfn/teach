(function() {
  var app, express, fs, port;
  express = require('express');
  fs = require('fs');
  app = express.createServer(express.logger());
  app.set("view options", {
    layout: false
  });
  app.set('view engine', 'coffee');
  app.use(express.static(__dirname + "/public"));
  app.register('.coffee', require('coffeekup').adapters.express);
  app.get('/', function(request, response) {
    return response.render('index');
  });
  app.get('/tutorial', function(request, response) {
    return response.render('tutorial');
  });
  port = process.env.PORT || 3456;
  app.listen(port, function() {
    return console.log("Listening on http://localhost:" + port);
  });
}).call(this);
