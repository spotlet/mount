
// boot up http server
require('http').createServer(function (req, res) {
  res.write('hello');
  res.end();
  this.close();
  process.exit(0);
}).listen(process.env.SPOTLET_HTTP_PORT);
console.log("Listening on port `%d'", process.env.SPOTLET_HTTP_PORT);

