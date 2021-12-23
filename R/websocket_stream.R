
#' R6 class for a websocket market stream
#' 
WebSocketStream <- R6::R6Class(
  "WebSocketStream",
  
  public = list(
    socket = NULL,
    baseURL = "wss://stream.binance.com:9443/stream",
    streamData = list(),
    
    initialize = function(){
      if(is.null(self$socket)){
        self$socket <- websocket::WebSocket$new(self$baseURL)
        self$socket$onOpen(function(event){cat("websocket stream.binance.com opened\n")})
        self$socket$onClose(function(event){cat("websocket stream.binance.com closed\n")})
        self$socket$onMessage(
          function(event){
            # process the data
            resp <- WebSocketResponse$new(self, event)
          })
      }
    },
    
    Subscribe = function(streams, symbols){
      allStreams <- private$ProcessStreamNames(streams, symbols)
      
      l <- list(method = "SUBSCRIBE", params = as.list(allStreams), id = 1)
      self$socket$send(jsonlite::toJSON(l, auto_unbox = TRUE))
    },
    
    Unsubscribe = function(streams, symbols){
      allStreams <- private$ProcessStreamNames(streams, symbols)
      
      l <- list(method = "UNSUBSCRIBE", params = as.list(allStreams), id = 312)
      self$socket$send(jsonlite::toJSON(l, auto_unbox = TRUE))
    },
    
    ListSubscriptions = function(){
      l <- list(method = "LIST_SUBSCRIPTIONS", id = 3)
      self$socket$send(jsonlite::toJSON(l, auto_unbox = TRUE))
    }
  )
  ,
  
  private = list(
    
    ProcessStreamNames = function(streams, symbols){
      #split streams into types:
      # individual streams: ticker@stream
      # group streams: !stream@arr
      # group streams: !stream
      indivStreams <- streams[!grepl("!", streams) & nchar(streams) < 20]
      groupAtStreams <- streams[streams %in% c("!ticker", "!miniTicker")]
      groupStreams <- streams[streams %in% c("!bookticker")]
      userStreams <- streams[nchar(streams) > 20] # a long sequence is probably a user data stream
      
      if(length(indivStreams) > 0){
        indivStreams <- as.vector(outer(paste0(tolower(symbols), "@"), indivStreams, FUN = paste0))
      }
      if(length(groupAtStreams) > 0){
        groupAtStreams <- paste0(groupAtStreams, "@arr")
      }
      
      return(c(indivStreams, groupAtStreams, groupStreams, userStreams))
    }
    
  )
)