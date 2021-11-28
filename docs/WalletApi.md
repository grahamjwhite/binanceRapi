# WalletApi

All URIs are relative to *https://api.binance.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SapiV1AccountApiRestrictionsGet**](WalletApi.md#SapiV1AccountApiRestrictionsGet) | **GET** /sapi/v1/account/apiRestrictions | Get API Key Permission (USER_DATA)
[**SapiV1AccountApiTradingStatusGet**](WalletApi.md#SapiV1AccountApiTradingStatusGet) | **GET** /sapi/v1/account/apiTradingStatus | Account API Trading Status (USER_DATA)
[**SapiV1AccountDisableFastWithdrawSwitchPost**](WalletApi.md#SapiV1AccountDisableFastWithdrawSwitchPost) | **POST** /sapi/v1/account/disableFastWithdrawSwitch | Disable Fast Withdraw Switch (USER_DATA)
[**SapiV1AccountEnableFastWithdrawSwitchPost**](WalletApi.md#SapiV1AccountEnableFastWithdrawSwitchPost) | **POST** /sapi/v1/account/enableFastWithdrawSwitch | Enable Fast Withdraw Switch (USER_DATA)
[**SapiV1AccountSnapshotGet**](WalletApi.md#SapiV1AccountSnapshotGet) | **GET** /sapi/v1/accountSnapshot | Daily Account Snapshot (USER_DATA)
[**SapiV1AccountStatusGet**](WalletApi.md#SapiV1AccountStatusGet) | **GET** /sapi/v1/account/status | Account Status (USER_DATA)
[**SapiV1AssetAssetDetailGet**](WalletApi.md#SapiV1AssetAssetDetailGet) | **GET** /sapi/v1/asset/assetDetail | Asset Detail (USER_DATA)
[**SapiV1AssetAssetDividendGet**](WalletApi.md#SapiV1AssetAssetDividendGet) | **GET** /sapi/v1/asset/assetDividend | Asset Dividend Record (USER_DATA)
[**SapiV1AssetDribbletGet**](WalletApi.md#SapiV1AssetDribbletGet) | **GET** /sapi/v1/asset/dribblet | DustLog(USER_DATA)
[**SapiV1AssetDustPost**](WalletApi.md#SapiV1AssetDustPost) | **POST** /sapi/v1/asset/dust | Dust Transfer (USER_DATA)
[**SapiV1AssetGetFundingAssetPost**](WalletApi.md#SapiV1AssetGetFundingAssetPost) | **POST** /sapi/v1/asset/get-funding-asset | Funding Wallet (USER_DATA)
[**SapiV1AssetTradeFeeGet**](WalletApi.md#SapiV1AssetTradeFeeGet) | **GET** /sapi/v1/asset/tradeFee | Trade Fee (USER_DATA)
[**SapiV1AssetTransferGet**](WalletApi.md#SapiV1AssetTransferGet) | **GET** /sapi/v1/asset/transfer | Query User Universal Transfer History (USER_DATA)
[**SapiV1AssetTransferPost**](WalletApi.md#SapiV1AssetTransferPost) | **POST** /sapi/v1/asset/transfer | User Universal Transfer (USER_DATA)
[**SapiV1CapitalConfigGetallGet**](WalletApi.md#SapiV1CapitalConfigGetallGet) | **GET** /sapi/v1/capital/config/getall | All Coins&#39; Information (USER_DATA)
[**SapiV1CapitalDepositAddressGet**](WalletApi.md#SapiV1CapitalDepositAddressGet) | **GET** /sapi/v1/capital/deposit/address | Deposit Address (supporting network) (USER_DATA)
[**SapiV1CapitalDepositHisrecGet**](WalletApi.md#SapiV1CapitalDepositHisrecGet) | **GET** /sapi/v1/capital/deposit/hisrec | Deposit History（supporting network） (USER_DATA)
[**SapiV1CapitalWithdrawApplyPost**](WalletApi.md#SapiV1CapitalWithdrawApplyPost) | **POST** /sapi/v1/capital/withdraw/apply | Withdraw (USER_DATA)
[**SapiV1CapitalWithdrawHistoryGet**](WalletApi.md#SapiV1CapitalWithdrawHistoryGet) | **GET** /sapi/v1/capital/withdraw/history | Withdraw History (supporting network) (USER_DATA)
[**SapiV1SystemStatusGet**](WalletApi.md#SapiV1SystemStatusGet) | **GET** /sapi/v1/system/status | System Status (System)


# **SapiV1AccountApiRestrictionsGet**
> InlineResponse20045 SapiV1AccountApiRestrictionsGet(timestamp, signature, recv.window=var.recv.window)

Get API Key Permission (USER_DATA)

Weight(IP): 1

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Get API Key Permission (USER_DATA)
api.instance <- WalletApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1AccountApiRestrictionsGet(var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20045**](inline_response_200_45.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | API Key permissions |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1AccountApiTradingStatusGet**
> InlineResponse20036 SapiV1AccountApiTradingStatusGet(timestamp, signature, recv.window=var.recv.window)

Account API Trading Status (USER_DATA)

Fetch account API trading status with details.  Weight(IP): 1

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Account API Trading Status (USER_DATA)
api.instance <- WalletApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1AccountApiTradingStatusGet(var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20036**](inline_response_200_36.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Account API trading status |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1AccountDisableFastWithdrawSwitchPost**
> object SapiV1AccountDisableFastWithdrawSwitchPost(timestamp, signature, recv.window=var.recv.window)

Disable Fast Withdraw Switch (USER_DATA)

- This request will disable fastwithdraw switch under your account. - You need to enable \"trade\" option for the api key which requests this endpoint.  Weight(IP): 1

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Disable Fast Withdraw Switch (USER_DATA)
api.instance <- WalletApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1AccountDisableFastWithdrawSwitchPost(var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

**object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1AccountEnableFastWithdrawSwitchPost**
> object SapiV1AccountEnableFastWithdrawSwitchPost(timestamp, signature, recv.window=var.recv.window)

Enable Fast Withdraw Switch (USER_DATA)

- This request will enable fastwithdraw switch under your account. You need to enable \"trade\" option for the api key which requests this endpoint. - When Fast Withdraw Switch is on, transferring funds to a Binance account will be done instantly. There is no on-chain transaction, no transaction ID and no withdrawal fee.  Weight(IP): 1

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Enable Fast Withdraw Switch (USER_DATA)
api.instance <- WalletApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1AccountEnableFastWithdrawSwitchPost(var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

**object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1AccountSnapshotGet**
> OneOfsnapshotSpotsnapshotMarginsnapshotFutures SapiV1AccountSnapshotGet(type, timestamp, signature, start.time=var.start.time, end.time=var.end.time, limit=5, recv.window=var.recv.window)

Daily Account Snapshot (USER_DATA)

Weight(IP): 2400

### Example
```R
library(binanceRapi)

var.type <- 'type_example' # character | 
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.start.time <- 56 # integer | UTC timestamp in ms
var.end.time <- 56 # integer | UTC timestamp in ms
var.limit <- 5 # integer | 
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Daily Account Snapshot (USER_DATA)
api.instance <- WalletApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1AccountSnapshotGet(var.type, var.timestamp, var.signature, start.time=var.start.time, end.time=var.end.time, limit=var.limit, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | Enum [SPOT, MARGIN, FUTURES] |  | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **start.time** | **integer**| UTC timestamp in ms | [optional] 
 **end.time** | **integer**| UTC timestamp in ms | [optional] 
 **limit** | **integer**|  | [optional] [default to 5]
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**OneOfsnapshotSpotsnapshotMarginsnapshotFutures**](oneOf&lt;snapshotSpot,snapshotMargin,snapshotFutures&gt;.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Account Snapshot |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1AccountStatusGet**
> InlineResponse20035 SapiV1AccountStatusGet(timestamp, signature, recv.window=var.recv.window)

Account Status (USER_DATA)

Fetch account status detail.  Weight(IP): 1

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Account Status (USER_DATA)
api.instance <- WalletApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1AccountStatusGet(var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20035**](inline_response_200_35.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1AssetAssetDetailGet**
> InlineResponse20040 SapiV1AssetAssetDetailGet(timestamp, signature, asset=var.asset, recv.window=var.recv.window)

Asset Detail (USER_DATA)

Fetch details of assets supported on Binance.  - Please get network and other deposit or withdraw details from `GET /sapi/v1/capital/config/getall`.  Weight(IP): 1

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.asset <- 'BNB' # character | 
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Asset Detail (USER_DATA)
api.instance <- WalletApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1AssetAssetDetailGet(var.timestamp, var.signature, asset=var.asset, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **asset** | **character**|  | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20040**](inline_response_200_40.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Asset detail |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1AssetAssetDividendGet**
> InlineResponse20039 SapiV1AssetAssetDividendGet(limit, timestamp, signature, asset=var.asset, start.time=var.start.time, end.time=var.end.time, recv.window=var.recv.window)

Asset Dividend Record (USER_DATA)

Query asset Dividend Record  Weight(IP): 10

### Example
```R
library(binanceRapi)

var.limit <- '20' # character | 
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.asset <- 'BNB' # character | 
var.start.time <- 56 # integer | UTC timestamp in ms
var.end.time <- 56 # integer | UTC timestamp in ms
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Asset Dividend Record (USER_DATA)
api.instance <- WalletApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1AssetAssetDividendGet(var.limit, var.timestamp, var.signature, asset=var.asset, start.time=var.start.time, end.time=var.end.time, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **character**|  | [default to &#39;20&#39;]
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **asset** | **character**|  | [optional] 
 **start.time** | **integer**| UTC timestamp in ms | [optional] 
 **end.time** | **integer**| UTC timestamp in ms | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20039**](inline_response_200_39.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Records of asset devidend |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1AssetDribbletGet**
> InlineResponse20037 SapiV1AssetDribbletGet(timestamp, signature, start.time=var.start.time, end.time=var.end.time, recv.window=var.recv.window)

DustLog(USER_DATA)

Weight(IP): 1

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.start.time <- 56 # integer | UTC timestamp in ms
var.end.time <- 56 # integer | UTC timestamp in ms
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#DustLog(USER_DATA)
api.instance <- WalletApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1AssetDribbletGet(var.timestamp, var.signature, start.time=var.start.time, end.time=var.end.time, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **start.time** | **integer**| UTC timestamp in ms | [optional] 
 **end.time** | **integer**| UTC timestamp in ms | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20037**](inline_response_200_37.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Dust log records |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1AssetDustPost**
> InlineResponse20038 SapiV1AssetDustPost(asset, timestamp, signature, recv.window=var.recv.window)

Dust Transfer (USER_DATA)

Convert dust assets to BNB.  Weight(UID): 10

### Example
```R
library(binanceRapi)

var.asset <- 'asset=BTC&asset=USDT' # character | The asset being converted. For example, asset=BTC&asset=USDT
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Dust Transfer (USER_DATA)
api.instance <- WalletApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1AssetDustPost(var.asset, var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset** | **character**| The asset being converted. For example, asset&#x3D;BTC&amp;asset&#x3D;USDT | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20038**](inline_response_200_38.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Dust log records |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1AssetGetFundingAssetPost**
> array[InlineResponse20044] SapiV1AssetGetFundingAssetPost(timestamp, signature, asset=var.asset, need.btc.valuation=var.need.btc.valuation, recv.window=var.recv.window)

Funding Wallet (USER_DATA)

- Currently supports querying the following business assets：Binance Pay, Binance Card, Binance Gift Card, Stock Token  Weight(IP): 1

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.asset <- 'BNB' # character | 
var.need.btc.valuation <- 'need.btc.valuation_example' # character | 
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Funding Wallet (USER_DATA)
api.instance <- WalletApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1AssetGetFundingAssetPost(var.timestamp, var.signature, asset=var.asset, need.btc.valuation=var.need.btc.valuation, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **asset** | **character**|  | [optional] 
 **need.btc.valuation** | Enum [true, false] |  | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**array[InlineResponse20044]**](inline_response_200_44.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Funding asset detail |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1AssetTradeFeeGet**
> array[InlineResponse20041] SapiV1AssetTradeFeeGet(timestamp, signature, symbol=var.symbol, recv.window=var.recv.window)

Trade Fee (USER_DATA)

Fetch trade fee  Weight(IP): 1

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Trade Fee (USER_DATA)
api.instance <- WalletApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1AssetTradeFeeGet(var.timestamp, var.signature, symbol=var.symbol, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**array[InlineResponse20041]**](inline_response_200_41.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Trade fee info per symbol |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1AssetTransferGet**
> InlineResponse20042 SapiV1AssetTransferGet(type, timestamp, signature, start.time=var.start.time, end.time=var.end.time, current=var.current, size=var.size, from.symbol=var.from.symbol, to.symbol=var.to.symbol, recv.window=var.recv.window)

Query User Universal Transfer History (USER_DATA)

- `fromSymbol` must be sent when type are ISOLATEDMARGIN_MARGIN and ISOLATEDMARGIN_ISOLATEDMARGIN - `toSymbol` must be sent when type are MARGIN_ISOLATEDMARGIN and ISOLATEDMARGIN_ISOLATEDMARGIN - Support query within the last 6 months only - If `startTime` and `endTime` not sent, return records of the last 7 days by default  Weight(IP): 1

### Example
```R
library(binanceRapi)

var.type <- 'MAIN_C2C' # character | Universal transfer type
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.start.time <- 56 # integer | UTC timestamp in ms
var.end.time <- 56 # integer | UTC timestamp in ms
var.current <- 1 # integer | Current querying page. Start from 1. Default:1
var.size <- 100 # integer | Default:10 Max:100
var.from.symbol <- 'BNBUSDT' # character | Must be sent when type are ISOLATEDMARGIN_MARGIN and ISOLATEDMARGIN_ISOLATEDMARGIN
var.to.symbol <- 'BNBUSDT' # character | Must be sent when type are MARGIN_ISOLATEDMARGIN and ISOLATEDMARGIN_ISOLATEDMARGIN
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Query User Universal Transfer History (USER_DATA)
api.instance <- WalletApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1AssetTransferGet(var.type, var.timestamp, var.signature, start.time=var.start.time, end.time=var.end.time, current=var.current, size=var.size, from.symbol=var.from.symbol, to.symbol=var.to.symbol, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | Enum [MAIN_C2C, MAIN_UMFUTURE, MAIN_CMFUTURE, MAIN_MARGIN, MAIN_MINING, C2C_MAIN, C2C_UMFUTURE, C2C_MINING, C2C_MARGIN, UMFUTURE_MAIN, UMFUTURE_C2C, UMFUTURE_MARGIN, CMFUTURE_MAIN, CMFUTURE_MARGIN, MARGIN_MAIN, MARGIN_UMFUTURE, MARGIN_CMFUTURE, MARGIN_MINING, MARGIN_C2C, MINING_MAIN, MINING_UMFUTURE, MINING_C2C, MINING_MARGIN, MAIN_PAY, PAY_MAIN, ISOLATEDMARGIN_MARGIN, MARGIN_ISOLATEDMARGIN, ISOLATEDMARGIN_ISOLATEDMARGIN] | Universal transfer type | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **start.time** | **integer**| UTC timestamp in ms | [optional] 
 **end.time** | **integer**| UTC timestamp in ms | [optional] 
 **current** | **integer**| Current querying page. Start from 1. Default:1 | [optional] 
 **size** | **integer**| Default:10 Max:100 | [optional] 
 **from.symbol** | **character**| Must be sent when type are ISOLATEDMARGIN_MARGIN and ISOLATEDMARGIN_ISOLATEDMARGIN | [optional] 
 **to.symbol** | **character**| Must be sent when type are MARGIN_ISOLATEDMARGIN and ISOLATEDMARGIN_ISOLATEDMARGIN | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20042**](inline_response_200_42.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Universal transfer history |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1AssetTransferPost**
> InlineResponse20043 SapiV1AssetTransferPost(type, asset, amount, timestamp, signature, from.symbol=var.from.symbol, to.symbol=var.to.symbol, recv.window=var.recv.window)

User Universal Transfer (USER_DATA)

You need to enable `Permits Universal Transfer` option for the api key which requests this endpoint.  - `fromSymbol` must be sent when type are ISOLATEDMARGIN_MARGIN and ISOLATEDMARGIN_ISOLATEDMARGIN - `toSymbol` must be sent when type are MARGIN_ISOLATEDMARGIN and ISOLATEDMARGIN_ISOLATEDMARGIN  ENUM of transfer types: - MAIN_UMFUTURE Spot account transfer to USDⓈ-M Futures account - MAIN_CMFUTURE Spot account transfer to COIN-M Futures account - MAIN_MARGIN Spot account transfer to Margin（cross）account - MAIN_MINING Spot account transfer to Mining account - UMFUTURE_MAIN USDⓈ-M Futures account transfer to Spot account - UMFUTURE_MARGIN USDⓈ-M Futures account transfer to Margin（cross）account - CMFUTURE_MAIN COIN-M Futures account transfer to Spot account - CMFUTURE_MARGIN COIN-M Futures account transfer to Margin(cross) account - MARGIN_MAIN Margin（cross）account transfer to Spot account - MARGIN_UMFUTURE Margin（cross）account transfer to USDⓈ-M Futures - MARGIN_CMFUTURE Margin（cross）account transfer to COIN-M Futures - MARGIN_MINING Margin（cross）account transfer to Mining account - MINING_MAIN Mining account transfer to Spot account - MINING_UMFUTURE Mining account transfer to USDⓈ-M Futures account - MINING_MARGIN Mining account transfer to Margin(cross) account - ISOLATEDMARGIN_MARGIN Isolated margin account transfer to Margin(cross) account - MARGIN_ISOLATEDMARGIN Margin(cross) account transfer to Isolated margin account - ISOLATEDMARGIN_ISOLATEDMARGIN Isolated margin account transfer to Isolated margin account - MAIN_FUNDING Spot account transfer to Funding account - FUNDING_MAIN Funding account transfer to Spot account - FUNDING_UMFUTURE Funding account transfer to UMFUTURE account - UMFUTURE_FUNDING UMFUTURE account transfer to Funding account - MARGIN_FUNDING MARGIN account transfer to Funding account - FUNDING_MARGIN Funding account transfer to Margin account - FUNDING_CMFUTURE Funding account transfer to CMFUTURE account - CMFUTURE_FUNDING CMFUTURE account transfer to Funding account  Weight(IP): 1

### Example
```R
library(binanceRapi)

var.type <- 'MAIN_C2C' # character | Universal transfer type
var.asset <- 'BTC' # character | 
var.amount <- 1.01 # numeric | 
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.from.symbol <- 'BNBUSDT' # character | Must be sent when type are ISOLATEDMARGIN_MARGIN and ISOLATEDMARGIN_ISOLATEDMARGIN
var.to.symbol <- 'BNBUSDT' # character | Must be sent when type are MARGIN_ISOLATEDMARGIN and ISOLATEDMARGIN_ISOLATEDMARGIN
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#User Universal Transfer (USER_DATA)
api.instance <- WalletApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1AssetTransferPost(var.type, var.asset, var.amount, var.timestamp, var.signature, from.symbol=var.from.symbol, to.symbol=var.to.symbol, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | Enum [MAIN_C2C, MAIN_UMFUTURE, MAIN_CMFUTURE, MAIN_MARGIN, MAIN_MINING, C2C_MAIN, C2C_UMFUTURE, C2C_MINING, C2C_MARGIN, UMFUTURE_MAIN, UMFUTURE_C2C, UMFUTURE_MARGIN, CMFUTURE_MAIN, CMFUTURE_MARGIN, MARGIN_MAIN, MARGIN_UMFUTURE, MARGIN_CMFUTURE, MARGIN_MINING, MARGIN_C2C, MINING_MAIN, MINING_UMFUTURE, MINING_C2C, MINING_MARGIN, MAIN_PAY, PAY_MAIN, ISOLATEDMARGIN_MARGIN, MARGIN_ISOLATEDMARGIN, ISOLATEDMARGIN_ISOLATEDMARGIN] | Universal transfer type | 
 **asset** | **character**|  | 
 **amount** | **numeric**|  | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **from.symbol** | **character**| Must be sent when type are ISOLATEDMARGIN_MARGIN and ISOLATEDMARGIN_ISOLATEDMARGIN | [optional] 
 **to.symbol** | **character**| Must be sent when type are MARGIN_ISOLATEDMARGIN and ISOLATEDMARGIN_ISOLATEDMARGIN | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20043**](inline_response_200_43.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Transfer id |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1CapitalConfigGetallGet**
> array[InlineResponse20030] SapiV1CapitalConfigGetallGet(timestamp, signature, recv.window=var.recv.window)

All Coins' Information (USER_DATA)

Get information of coins (available for deposit and withdraw) for user.  Weight(IP): 10

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#All Coins' Information (USER_DATA)
api.instance <- WalletApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1CapitalConfigGetallGet(var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**array[InlineResponse20030]**](inline_response_200_30.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | All coins details information |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1CapitalDepositAddressGet**
> InlineResponse20034 SapiV1CapitalDepositAddressGet(coin, timestamp, signature, network=var.network, recv.window=var.recv.window)

Deposit Address (supporting network) (USER_DATA)

Fetch deposit address with network.  - If network is not send, return with default network of the coin. - You can get network and isDefault in networkList in the response of Get /sapi/v1/capital/config/getall (HMAC SHA256).  Weight(IP): 10

### Example
```R
library(binanceRapi)

var.coin <- 'BNB' # character | Coin name
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.network <- 'ETH' # character | 
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Deposit Address (supporting network) (USER_DATA)
api.instance <- WalletApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1CapitalDepositAddressGet(var.coin, var.timestamp, var.signature, network=var.network, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coin** | **character**| Coin name | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **network** | **character**|  | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20034**](inline_response_200_34.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Deposit address info |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1CapitalDepositHisrecGet**
> array[InlineResponse20032] SapiV1CapitalDepositHisrecGet(coin, timestamp, signature, status=var.status, start.time=var.start.time, end.time=var.end.time, offset=var.offset, limit=var.limit, recv.window=var.recv.window)

Deposit History（supporting network） (USER_DATA)

Fetch deposit history.  - Please notice the default `startTime` and `endTime` to make sure that time interval is within 0-90 days. - If both `startTime` and `endTime` are sent, time between `startTime` and `endTime` must be less than 90 days.  Weight(IP): 1

### Example
```R
library(binanceRapi)

var.coin <- 'BNB' # character | Coin name
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.status <- 56 # integer | 0 -> pending\\ 6 -> credited but cannot withdraw\\ 1 -> success
var.start.time <- 56 # integer | UTC timestamp in ms
var.end.time <- 56 # integer | UTC timestamp in ms
var.offset <- 56 # integer | 
var.limit <- 500 # integer | Default 500; max 1000.
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Deposit History（supporting network） (USER_DATA)
api.instance <- WalletApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1CapitalDepositHisrecGet(var.coin, var.timestamp, var.signature, status=var.status, start.time=var.start.time, end.time=var.end.time, offset=var.offset, limit=var.limit, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coin** | **character**| Coin name | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **status** | Enum [0, 6, 1] | 0 -&gt; pending\\ 6 -&gt; credited but cannot withdraw\\ 1 -&gt; success | [optional] 
 **start.time** | **integer**| UTC timestamp in ms | [optional] 
 **end.time** | **integer**| UTC timestamp in ms | [optional] 
 **offset** | **integer**|  | [optional] 
 **limit** | **integer**| Default 500; max 1000. | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**array[InlineResponse20032]**](inline_response_200_32.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of deposits |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1CapitalWithdrawApplyPost**
> InlineResponse20031 SapiV1CapitalWithdrawApplyPost(coin, address, amount, timestamp, signature, withdraw.order.id=var.withdraw.order.id, network=var.network, address.tag=var.address.tag, transaction.fee.flag=FALSE, name=var.name, wallet.type=var.wallet.type, recv.window=var.recv.window)

Withdraw (USER_DATA)

Submit a withdraw request.  - If `network` not send, return with default network of the coin. - You can get `network` and `isDefault` in `networkList` of a coin in the response of `Get /sapi/v1/capital/config/getall (HMAC SHA256)`.  Weight(IP): 1

### Example
```R
library(binanceRapi)

var.coin <- 'BNB' # character | Coin name
var.address <- 'address_example' # character | 
var.amount <- 1.01 # numeric | 
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.withdraw.order.id <- 'withdraw.order.id_example' # character | Client id for withdraw
var.network <- 'network_example' # character | Get the value from `GET /sapi/v1/capital/config/getall`
var.address.tag <- 'address.tag_example' # character | Secondary address identifier for coins like XRP,XMR etc.
var.transaction.fee.flag <- FALSE # character | When making internal transfer - `true` ->  returning the fee to the destination account; - `false` -> returning the fee back to the departure account.
var.name <- 'name_example' # character | 
var.wallet.type <- 56 # integer | The wallet type for withdraw，0-Spot wallet, 1- Funding wallet. Default is Spot wallet
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Withdraw (USER_DATA)
api.instance <- WalletApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1CapitalWithdrawApplyPost(var.coin, var.address, var.amount, var.timestamp, var.signature, withdraw.order.id=var.withdraw.order.id, network=var.network, address.tag=var.address.tag, transaction.fee.flag=var.transaction.fee.flag, name=var.name, wallet.type=var.wallet.type, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coin** | **character**| Coin name | 
 **address** | **character**|  | 
 **amount** | **numeric**|  | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **withdraw.order.id** | **character**| Client id for withdraw | [optional] 
 **network** | **character**| Get the value from &#x60;GET /sapi/v1/capital/config/getall&#x60; | [optional] 
 **address.tag** | **character**| Secondary address identifier for coins like XRP,XMR etc. | [optional] 
 **transaction.fee.flag** | **character**| When making internal transfer - &#x60;true&#x60; -&gt;  returning the fee to the destination account; - &#x60;false&#x60; -&gt; returning the fee back to the departure account. | [optional] [default to FALSE]
 **name** | **character**|  | [optional] 
 **wallet.type** | **integer**| The wallet type for withdraw，0-Spot wallet, 1- Funding wallet. Default is Spot wallet | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20031**](inline_response_200_31.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Transafer Id |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1CapitalWithdrawHistoryGet**
> array[InlineResponse20033] SapiV1CapitalWithdrawHistoryGet(coin, timestamp, signature, withdraw.order.id=var.withdraw.order.id, status=var.status, start.time=var.start.time, end.time=var.end.time, offset=var.offset, limit=var.limit, recv.window=var.recv.window)

Withdraw History (supporting network) (USER_DATA)

Fetch withdraw history.  - `network` may not be in the response for old withdraw. - Please notice the default `startTime` and `endTime` to make sure that time interval is within 0-90 days. - If both `startTime` and `endTime` are sent, time between `startTime` and `endTime` must be less than 90 days  Weight(IP): 1

### Example
```R
library(binanceRapi)

var.coin <- 'BNB' # character | Coin name
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.withdraw.order.id <- 'withdraw.order.id_example' # character | 
var.status <- 56 # integer | 0:Email Sent 1:Cancelled 2:Awaiting Approval 3:Rejected 4:Processing 5:Failure 6:Completed
var.start.time <- 56 # integer | UTC timestamp in ms
var.end.time <- 56 # integer | UTC timestamp in ms
var.offset <- 56 # integer | 
var.limit <- 500 # integer | Default 500; max 1000.
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Withdraw History (supporting network) (USER_DATA)
api.instance <- WalletApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1CapitalWithdrawHistoryGet(var.coin, var.timestamp, var.signature, withdraw.order.id=var.withdraw.order.id, status=var.status, start.time=var.start.time, end.time=var.end.time, offset=var.offset, limit=var.limit, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coin** | **character**| Coin name | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **withdraw.order.id** | **character**|  | [optional] 
 **status** | Enum [0, 1, 2, 3, 4, 5, 6] | 0:Email Sent 1:Cancelled 2:Awaiting Approval 3:Rejected 4:Processing 5:Failure 6:Completed | [optional] 
 **start.time** | **integer**| UTC timestamp in ms | [optional] 
 **end.time** | **integer**| UTC timestamp in ms | [optional] 
 **offset** | **integer**|  | [optional] 
 **limit** | **integer**| Default 500; max 1000. | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**array[InlineResponse20033]**](inline_response_200_33.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of withdraw history |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1SystemStatusGet**
> InlineResponse20029 SapiV1SystemStatusGet()

System Status (System)

Fetch system status.  Weight(IP): 1

### Example
```R
library(binanceRapi)


#System Status (System)
api.instance <- WalletApi$new()
result <- api.instance$SapiV1SystemStatusGet()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20029**](inline_response_200_29.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

