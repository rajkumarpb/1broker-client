OneBroker = require "../src/client"
api_key   = require "./_key"

if not api_key

  console.log "Can't test without API_KEY !"
  console.log "Please update examples/_key.coffee with your key"
  return

client = OneBroker( api_key )

callback = ( error, response ) ->

  if error
    console.log "got error"
    console.log error
    return

  console.log response

params =
  order_id : 941400

client.order.cancel( params, callback )


