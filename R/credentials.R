
#' R6 class for Binance credentials
#' 
#' @importFrom R6 R6Class
#' @export 
Credentials <- R6::R6Class(
  "Credentials",
  
  public = list(
    key = NULL,
    test = NULL,
    keyName = NULL,
    secretName = NULL,
    
    initialize = function(test = TRUE){
      self$test <- test
      self$keyName <- ifelse(test, "binanceRapi-test.key", "binanceRapi.key")
      self$secretName <- ifelse(test, "binanceRapi-test.secret", "binanceRapi.secret")
      check <- self$checkCredentials()
      
      if(check[self$keyName]){
        self$key <- private$getKey()
      }
      if(check[self$secretName]){
        private$secret <- private$getSecret()
      }
    },
    
    sign = function(params){
      signature <- digest::hmac(
        key = private$secret,
        object = paste(
          mapply(paste, names(params), params, sep = '=', USE.NAMES = FALSE),
          collapse = '&'),
        algo = 'sha256')
      return(signature)
    },
    
    setSecret = function(secret){
      keyring::key_set_with_value(self$secretName, 
                                  username = Sys.getenv("USERNAME"),
                                  password = secret)
      private$secret <- secret
    },
    
    setKey = function(key){
      keyring::key_set_with_value(self$keyName,
                                  username = Sys.getenv("USERNAME"),
                                  password = key)
      self$key <- key
    },
    
    checkCredentials = function(){
      
      services <- keyring::key_list()$service
      keyExists <- self$keyName %in% services
      secretExists <- self$secretName %in% services
      retVal <- c(keyExists, secretExists)
      names(retVal) <- c(self$keyName, self$secretName)
      
      if(!all(retVal)){
        warning("The following credentials have not been set: ", 
                paste(names(retVal)[!retVal], collapse = ", "), ".", " Some api functionality will not work.",
                "Set credentials using the setKey and setSecret functions of the Credentials object.",
                call. = FALSE)
      }
      
      return(retVal)
    }
  ),
  
  private = list(
    secret = NULL,
    
    getKey = function(){
      keyring::key_get(self$keyName, username = Sys.getenv("USERNAME"))
    },
    
    getSecret = function(){
      keyring::key_get(self$secretName, username = Sys.getenv("USERNAME"))
    }
  )
)