'use strict';

// Imports dependencies and set up http server
const
  express = require('express'),
  bodyParser = require('body-parser'),
  app = express().use(bodyParser.json()); // creates express http server

// Sets server port and logs message on success
app.listen(process.env.PORT || 1337, () => console.log('webhook is listening'));



https://api.textlocal.in/send/?username=yraj@srivarumotors.com&hash=Geostrom23!&sender=TXTLCL&numbers=+918883315009&message=Test_message.

{"balance":9,"batch_id":449017139,"cost":1,"num_messages":1,"message":{"num_parts":1,"sender":"TXTLCL","content":"Test_message."},"receipt_url":"","custom":"","messages":[{"id":"1475944291","recipient":918883315009}],"status":"success"}
