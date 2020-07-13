-module(openapi_new_order_single).

-export([encode/1]).

-export_type([openapi_new_order_single/0]).

-type openapi_new_order_single() ::
    #{ 'exchange_id' := binary(),
       'client_order_id' := binary(),
       'symbol_exchange' => binary(),
       'symbol_coinapi' => binary(),
       'amount_order' := integer(),
       'price' := integer(),
       'side' := openapi_ord_side:openapi_ord_side(),
       'order_type' := openapi_ord_type:openapi_ord_type(),
       'time_in_force' := openapi_time_in_force:openapi_time_in_force(),
       'expire_time' => calendar:date(),
       'exec_inst' => list()
     }.

encode(#{ 'exchange_id' := ExchangeId,
          'client_order_id' := ClientOrderId,
          'symbol_exchange' := SymbolExchange,
          'symbol_coinapi' := SymbolCoinapi,
          'amount_order' := AmountOrder,
          'price' := Price,
          'side' := Side,
          'order_type' := OrderType,
          'time_in_force' := TimeInForce,
          'expire_time' := ExpireTime,
          'exec_inst' := ExecInst
        }) ->
    #{ 'exchange_id' => ExchangeId,
       'client_order_id' => ClientOrderId,
       'symbol_exchange' => SymbolExchange,
       'symbol_coinapi' => SymbolCoinapi,
       'amount_order' => AmountOrder,
       'price' => Price,
       'side' => Side,
       'order_type' => OrderType,
       'time_in_force' => TimeInForce,
       'expire_time' => ExpireTime,
       'exec_inst' => ExecInst
     }.