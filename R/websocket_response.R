
#' R6 class for a websocket response
#' 
WebSocketResponse <- R6::R6Class(
  "WebSocketResponse",
  public = list(
    webSocketStream = NULL,
    eventData = NULL,
    
    initialize = function(webSocketStream, eventData){
      self$webSocketStream = webSocketStream
      self$eventData = eventData
      private$processStreamEvent()
    }
  ),
  
  private = list(
    GetEventType = function(eventData){
      
      if(class(eventData) == "data.frame"){ #it's an all markets payload
        return(eventData$e[1])
      }
      
      if(is.null(eventData$e)){ # no event type is returned
        if(is.null(eventData$code)){ # it's not an error 
          
          # if it returns an id use that
          if(!is.null(eventData$id)){
            eventType <- switch(as.character(eventData$id),
                                 "1" = "subscribe",
                                 "312" = "unsubscribe",
                                 "3" = "list_subscriptions",
                                 "5" = "set_property",
                                 "2" = "get_property")
          } else{
            
            # check the specific fields returned
            fields <- names(eventData)
            
            lookup <- list(bookTicker = c("u", "s", "b", "B", "a", "A"),
                           partial_depth = c("lastupdateid", "bids", "asks"),
                           diff_depth = c("e", "E", "s", "U", "u", "b", "a"))
            
            eventType <- names(lookup)[sapply(lookup, identical, fields)]
            
          }
          
        } else {
          eventType <- "error"
        }
      } else {
        eventType <- eventData$e
      }
      
      return(eventType)
      
    },
    
    processStreamEvent = function(){
      
      payload <- (jsonlite::fromJSON(self$eventData$data))
        
        event <- private$GetEventType(
          if(is.null(payload$data)){
          payload
        } else {
          payload$data
        })
        
        if(identical(names(payload), c("stream", "data"))){
          
          if(event == "kline"){# flatten the kline data into one list
            n <- c("e", "E", names(payload$data$k))
            payload$data <- private$flattenList(list(payload$data$e, payload$data$E, payload$data$k))
            names(payload$data) <- n
          }
          
          self$webSocketStream$streamData[payload$stream] <- payload["data"]
          names(self$webSocketStream$streamData[[payload$stream]]) <-  private$eventDataNames(names(payload$data), event)
          
        } else {
          
          if(event == "error"){
            private$processStreamError(self$eventData)
          } else if(event %in% c("subscribe", "unsubscribe")){
            self$webSocketStream$ListSubscriptions()
          } else if(event == "list_subscriptions"){
            message(crayon::green("Subscribed to: ", paste(payload$result, collapse = ", ")))
          }
          
        }
      
      return(payload)
      
    },
    
    processStreamError = function(eventData){
      
      warning(crayon::red("Error in websocket request: \n", 
                          "code: ", eventData$code, "\n", 
                          "Message: ", eventData$msg))
      
    },
    
    flattenList = function(x) {
      
      len <- sum(rapply(x, function(x) 1L))
      y <- vector('list', len)
      
      i <- 0L
      rapply(x, function(x){
        i <<- i+1L
        y[[i]] <<- x 
      })
      
      return(y)
    },
    
    eventDataNames = function(eventLetters, eventType){
      
      convertLetter <- function(letter){
        name <- switch(letter,
                       "a" = switch(eventType,
                                    "ticker" = "best_ask_price",
                                    "bookTicker" = "best_ask_price",
                                    "aggTrade" = "agg_trade_id",
                                    "trade" = "seller_order_id",
                                    "24hrTicker" = "best_ask_price"),
                       "A" = "best_ask_quantity",
                       "b" = switch(eventType, 
                                    "ticker" = "best_bid_price",
                                    "bookTicker" = "best_bid_price",
                                    "trade" = "buyer_order_id",
                                    "24hrTicker" = "best_bid_price",
                       ),
                       "B" = switch(eventType,
                                    "ticker" = "best_bid_quantity",
                                    "bookTicker" = "best_bid_quantity",
                                    "24hrTicker" = "best_bid_quantity",
                                    "bookticker" = "best_bid_quantity",
                                    "kline" = "ignore"),
                       "c" = switch(eventType,
                                    "24hrMiniTicker" = "close_price",
                                    "24hrTicker" = "last_price",
                                    "kline" = "close_price"),
                       "C" = "stats_close_time",
                       "e" = "eventType", 
                       "E" = "event_time", 
                       "f" = "first_trade_id",
                       "F" = "first_trade_id",
                       "h" = "high_price",
                       "i" = "interval",
                       "k" = "kline_data",
                       "l" = switch(eventType,
                                    "aggTrade" = "last_trade_id",
                                    "24hrMiniTicker" = "low_price",
                                    "24hrTicker" = "low_price",
                                    "kline" = "low_price"),
                       "L" = "last_trade_id",
                       "n" = "number_of_trades",
                       "o" = "open_price",
                       "O" = "stats_open_time",
                       "p" = switch(eventType,
                                    "aggTrade" = "price",
                                    "trade" = "price",
                                    "24hrTicker" = "price_change"),
                       "P" = "price_change_percent",
                       "q" = switch(eventType,
                                    "aggTrade" = "quantity",
                                    "trade" = "quantity",
                                    "24hrMiniTicker" = "quote_asset_volume",
                                    "24hrTicker" = "quote_asset_volume",
                                    "kline" = "quote_asset_volume"),
                       "Q" = switch(eventType,
                                    "ticker" = "last_quantity",
                                    "bookTicker" = "last_quantity",
                                    "24hrTicker" = "last_quantity",
                                    "kline" = "taker_buy_quote_asset_volume"),
                       "s" = "symbol", 
                       "t" = switch(eventType,
                                    "trade" = "trade_id",
                                    "kline" = "kline_start"),
                       "T" = switch(eventType,
                                    "trade" = "trade_time",
                                    "kline" = "kline_close"), 
                       "u" = "orderbook_update_id",
                       "m" = "is_maker", 
                       "M" = "ignore",
                       "v" = "base_asset_volume",
                       "V" = "taker_buy_base_asset_volume",
                       "w" = "weighted_avg_price",
                       "x" = switch(eventType,
                                    "ticker" = "pre_24h_price",
                                    "bookTicker" = "pre_24h_price",
                                    "24hrTicker" = "pre_24h_price",
                                    "kline" = "is_closed"),
                       "unknown_label"
        )
        
        return(name)
      }
      
      return(sapply(eventLetters, convertLetter))
      
    }
    
  )
)