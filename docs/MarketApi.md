# MarketApi

All URIs are relative to *https://api.binance.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiV3AggTradesGet**](MarketApi.md#ApiV3AggTradesGet) | **GET** /api/v3/aggTrades | Compressed/Aggregate Trades List
[**ApiV3AvgPriceGet**](MarketApi.md#ApiV3AvgPriceGet) | **GET** /api/v3/avgPrice | Current Average Price
[**ApiV3DepthGet**](MarketApi.md#ApiV3DepthGet) | **GET** /api/v3/depth | Order Book
[**ApiV3ExchangeInfoGet**](MarketApi.md#ApiV3ExchangeInfoGet) | **GET** /api/v3/exchangeInfo | Exchange Information
[**ApiV3HistoricalTradesGet**](MarketApi.md#ApiV3HistoricalTradesGet) | **GET** /api/v3/historicalTrades | Old Trade Lookup
[**ApiV3KlinesGet**](MarketApi.md#ApiV3KlinesGet) | **GET** /api/v3/klines | Kline/Candlestick Data
[**ApiV3PingGet**](MarketApi.md#ApiV3PingGet) | **GET** /api/v3/ping | Test Connectivity
[**ApiV3Ticker24hrGet**](MarketApi.md#ApiV3Ticker24hrGet) | **GET** /api/v3/ticker/24hr | 24hr Ticker Price Change Statistics
[**ApiV3TickerBookTickerGet**](MarketApi.md#ApiV3TickerBookTickerGet) | **GET** /api/v3/ticker/bookTicker | Symbol Order Book Ticker
[**ApiV3TickerPriceGet**](MarketApi.md#ApiV3TickerPriceGet) | **GET** /api/v3/ticker/price | Symbol Price Ticker
[**ApiV3TimeGet**](MarketApi.md#ApiV3TimeGet) | **GET** /api/v3/time | Check Server Time
[**ApiV3TradesGet**](MarketApi.md#ApiV3TradesGet) | **GET** /api/v3/trades | Recent Trades List


# **ApiV3AggTradesGet**
> array[AggTrade] ApiV3AggTradesGet(symbol, from.id=var.from.id, start.time=var.start.time, end.time=var.end.time, limit=var.limit)

Compressed/Aggregate Trades List

Get compressed, aggregate trades. Trades that fill at the time, from the same order, with the same price will have the quantity aggregated. - If `startTime` and `endTime` are sent, time between startTime and endTime must be less than 1 hour. - If `fromId`, `startTime`, and `endTime` are not sent, the most recent aggregate trades will be returned.  Weight(IP): 1

### Example
```R
library(binanceRapi)

var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT
var.from.id <- 56 # integer | Trade id to fetch from. Default gets most recent trades.
var.start.time <- 56 # integer | UTC timestamp in ms
var.end.time <- 56 # integer | UTC timestamp in ms
var.limit <- 500 # integer | Default 500; max 1000.

#Compressed/Aggregate Trades List
api.instance <- MarketApi$new()
result <- api.instance$ApiV3AggTradesGet(var.symbol, from.id=var.from.id, start.time=var.start.time, end.time=var.end.time, limit=var.limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | 
 **from.id** | **integer**| Trade id to fetch from. Default gets most recent trades. | [optional] 
 **start.time** | **integer**| UTC timestamp in ms | [optional] 
 **end.time** | **integer**| UTC timestamp in ms | [optional] 
 **limit** | **integer**| Default 500; max 1000. | [optional] 

### Return type

[**array[AggTrade]**](aggTrade.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Trade list |  -  |
| **400** | Bad Request |  -  |

# **ApiV3AvgPriceGet**
> InlineResponse2003 ApiV3AvgPriceGet(symbol)

Current Average Price

Current average price for a symbol.  Weight(IP): 1

### Example
```R
library(binanceRapi)

var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT

#Current Average Price
api.instance <- MarketApi$new()
result <- api.instance$ApiV3AvgPriceGet(var.symbol)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | 

### Return type

[**InlineResponse2003**](inline_response_200_3.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Average price |  -  |
| **400** | Bad Request |  -  |

# **ApiV3DepthGet**
> InlineResponse2002 ApiV3DepthGet(symbol, limit=100)

Order Book

| Limit               | Weight(IP)  | |---------------------|-------------| | 5, 10, 20, 50, 100  | 1           | | 500                 | 5           | | 1000                | 10          | | 5000                | 50          |

### Example
```R
library(binanceRapi)

var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT
var.limit <- 100 # integer | 

#Order Book
api.instance <- MarketApi$new()
result <- api.instance$ApiV3DepthGet(var.symbol, limit=var.limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | 
 **limit** | Enum [5, 10, 20, 50, 100, 500, 1000, 5000] |  | [optional] [default to 100]

### Return type

[**InlineResponse2002**](inline_response_200_2.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Order book |  -  |
| **400** | Bad Request |  -  |

# **ApiV3ExchangeInfoGet**
> InlineResponse2001 ApiV3ExchangeInfoGet(symbol=var.symbol, array.symbols=var.array.symbols)

Exchange Information

Current exchange trading rules and symbol information  - If any symbol provided in either symbol or symbols do not exist, the endpoint will throw an error.  Weight(IP): 10

### Example
```R
library(binanceRapi)

var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT
var.array.symbols <- '[\"BTCUSDT\",\"BNBBTC\"]' # character | 

#Exchange Information
api.instance <- MarketApi$new()
result <- api.instance$ApiV3ExchangeInfoGet(symbol=var.symbol, array.symbols=var.array.symbols)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | [optional] 
 **array.symbols** | **character**|  | [optional] 

### Return type

[**InlineResponse2001**](inline_response_200_1.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Current exchange trading rules and symbol information |  -  |
| **400** | Bad Request |  -  |

# **ApiV3HistoricalTradesGet**
> array[Trade] ApiV3HistoricalTradesGet(symbol, limit=var.limit, from.id=var.from.id)

Old Trade Lookup

Get older market trades.  Weight(IP): 5

### Example
```R
library(binanceRapi)

var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT
var.limit <- 500 # integer | Default 500; max 1000.
var.from.id <- 56 # integer | Trade id to fetch from. Default gets most recent trades.

#Old Trade Lookup
api.instance <- MarketApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ApiV3HistoricalTradesGet(var.symbol, limit=var.limit, from.id=var.from.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | 
 **limit** | **integer**| Default 500; max 1000. | [optional] 
 **from.id** | **integer**| Trade id to fetch from. Default gets most recent trades. | [optional] 

### Return type

[**array[Trade]**](trade.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Trade list |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **ApiV3KlinesGet**
> array[array[OneOflongstring]] ApiV3KlinesGet(symbol, interval, start.time=var.start.time, end.time=var.end.time, limit=var.limit)

Kline/Candlestick Data

Kline/candlestick bars for a symbol.\\ Klines are uniquely identified by their open time.  - If `startTime` and `endTime` are not sent, the most recent klines are returned.  Weight(IP): 1

### Example
```R
library(binanceRapi)

var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT
var.interval <- 'interval_example' # character | kline intervals
var.start.time <- 56 # integer | UTC timestamp in ms
var.end.time <- 56 # integer | UTC timestamp in ms
var.limit <- 500 # integer | Default 500; max 1000.

#Kline/Candlestick Data
api.instance <- MarketApi$new()
result <- api.instance$ApiV3KlinesGet(var.symbol, var.interval, start.time=var.start.time, end.time=var.end.time, limit=var.limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | 
 **interval** | Enum [1m, 3m, 5m, 15m, 30m, 1h, 2h, 4h, 6h, 8h, 12h, 1d, 3d, 1w, 1M] | kline intervals | 
 **start.time** | **integer**| UTC timestamp in ms | [optional] 
 **end.time** | **integer**| UTC timestamp in ms | [optional] 
 **limit** | **integer**| Default 500; max 1000. | [optional] 

### Return type

[**array[array[OneOflongstring]]**](array.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Kline data |  -  |
| **400** | Bad Request |  -  |

# **ApiV3PingGet**
> object ApiV3PingGet()

Test Connectivity

Test connectivity to the Rest API.  Weight(IP): 1

### Example
```R
library(binanceRapi)


#Test Connectivity
api.instance <- MarketApi$new()
result <- api.instance$ApiV3PingGet()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **ApiV3Ticker24hrGet**
> OneOftickertickerList ApiV3Ticker24hrGet(symbol=var.symbol)

24hr Ticker Price Change Statistics

24 hour rolling window price change statistics. Careful when accessing this with no symbol.  - If the symbol is not sent, tickers for all symbols will be returned in an array.  Weight(IP):\\ `1` for a single symbol;\\ `40` when the symbol parameter is omitted;

### Example
```R
library(binanceRapi)

var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT

#24hr Ticker Price Change Statistics
api.instance <- MarketApi$new()
result <- api.instance$ApiV3Ticker24hrGet(symbol=var.symbol)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | [optional] 

### Return type

[**OneOftickertickerList**](oneOf&lt;ticker,tickerList&gt;.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | 24hr ticker |  -  |
| **400** | Bad Request |  -  |

# **ApiV3TickerBookTickerGet**
> OneOfbookTickerbookTickerList ApiV3TickerBookTickerGet(symbol=var.symbol)

Symbol Order Book Ticker

Best price/qty on the order book for a symbol or symbols.  - If the symbol is not sent, bookTickers for all symbols will be returned in an array.  Weight(IP):\\ `1` for a single symbol;\\ `2` when the symbol parameter is omitted;

### Example
```R
library(binanceRapi)

var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT

#Symbol Order Book Ticker
api.instance <- MarketApi$new()
result <- api.instance$ApiV3TickerBookTickerGet(symbol=var.symbol)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | [optional] 

### Return type

[**OneOfbookTickerbookTickerList**](oneOf&lt;bookTicker,bookTickerList&gt;.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Order book ticker |  -  |
| **400** | Bad Request |  -  |

# **ApiV3TickerPriceGet**
> OneOfpriceTickerpriceTickerList ApiV3TickerPriceGet(symbol=var.symbol)

Symbol Price Ticker

Latest price for a symbol or symbols.  - If the symbol is not sent, prices for all symbols will be returned in an array.  Weight(IP):\\ `1` for a single symbol;\\ `2` when the symbol parameter is omitted;

### Example
```R
library(binanceRapi)

var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT

#Symbol Price Ticker
api.instance <- MarketApi$new()
result <- api.instance$ApiV3TickerPriceGet(symbol=var.symbol)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | [optional] 

### Return type

[**OneOfpriceTickerpriceTickerList**](oneOf&lt;priceTicker,priceTickerList&gt;.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Price ticker |  -  |
| **400** | Bad Request |  -  |

# **ApiV3TimeGet**
> InlineResponse200 ApiV3TimeGet()

Check Server Time

Test connectivity to the Rest API and get the current server time.  Weight(IP): 1

### Example
```R
library(binanceRapi)


#Check Server Time
api.instance <- MarketApi$new()
result <- api.instance$ApiV3TimeGet()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse200**](inline_response_200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Binance server UTC timestamp |  -  |

# **ApiV3TradesGet**
> array[Trade] ApiV3TradesGet(symbol, limit=var.limit)

Recent Trades List

Get recent trades.  Weight(IP): 1

### Example
```R
library(binanceRapi)

var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT
var.limit <- 500 # integer | Default 500; max 1000.

#Recent Trades List
api.instance <- MarketApi$new()
result <- api.instance$ApiV3TradesGet(var.symbol, limit=var.limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | 
 **limit** | **integer**| Default 500; max 1000. | [optional] 

### Return type

[**array[Trade]**](trade.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Trade list |  -  |
| **400** | Bad Request |  -  |

