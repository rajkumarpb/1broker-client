// Generated by CoffeeScript 1.11.1
module.exports = function(client, symbol, margin, leverage, callback) {
  var params;
  if (margin == null) {
    margin = 0.01;
  }
  if (leverage == null) {
    leverage = 1;
  }
  params = {
    symbol: market,
    margin: margin,
    direction: 'long',
    leverage: leverage,
    order_type: 'Market'
  };
  return client.order.create(params, callback);
};
