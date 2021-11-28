# binanceRapi::MarginOrderResponseFull


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **character** |  | 
**orderId** | **integer** |  | 
**clientOrderId** | **character** |  | 
**transactTime** | **integer** |  | 
**price** | **character** |  | 
**origQty** | **character** |  | 
**executedQty** | **character** |  | 
**cummulativeQuoteQty** | **character** |  | 
**status** | **character** |  | 
**timeInForce** | **character** |  | 
**type** | **character** |  | 
**side** | **character** |  | 
**marginBuyBorrowAmount** | **numeric** | will not return if no margin trade happens | 
**marginBuyBorrowAsset** | **character** | will not return if no margin trade happens | 
**isIsolated** | **character** |  | 
**fills** | [**array[OrderResponseFullFills]**](orderResponseFull_fills.md) |  | 


