OneBroker = require "../src/client"
api_key   = require "./_key"

if not api_key

  console.log "Can't test without API_KEY !"
  console.log "Please update tests/api_key.coffee"
  return

client = OneBroker( api_key )

callback = ( error, response ) ->

  if error
    console.log "got error"
    console.log error
    return

  console.log response

params =
  symbol      : 'EURUSD'
  margin      : 0.01
  direction   : 'long'
  leverage    : 1
  order_type  : 'Limit'
  # when doing Limit orders, that's how you specify the entry_price
  order_type_parameter : '1.0'
  stop_loss   : '0.9'
  take_profit : '1.1'

client.order.create( params, callback )
