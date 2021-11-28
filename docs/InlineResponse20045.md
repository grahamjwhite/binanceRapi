# binanceRapi::InlineResponse20045


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ipRestrict** | **character** |  | 
**createTime** | **integer** |  | 
**enableWithdrawals** | **character** | This option allows you to withdraw via API. You must apply the IP Access Restriction filter in order to enable withdrawals | 
**enableInternalTransfer** | **character** | This option authorizes this key to transfer funds between your master account and your sub account instantly | 
**permitsUniversalTransfer** | **character** | Authorizes this key to be used for a dedicated universal transfer API to transfer multiple supported currencies. Each business&#39;s own transfer API rights are not affected by this authorization | 
**enableVanillaOptions** | **character** | Authorizes this key to Vanilla options trading | 
**enableReading** | **character** |  | 
**enableFutures** | **character** | API Key created before your futures account opened does not support futures API service | 
**enableMargin** | **character** | This option can be adjusted after the Cross Margin account transfer is completed | 
**enableSpotAndMarginTrading** | **character** |  | 
**tradingAuthorityExpirationTime** | **integer** | Expiration time for spot and margin trading permission | 


