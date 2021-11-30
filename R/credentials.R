
#' R6 class for Binance credentials
#' 
#' @importFrom R6 R6Class
#' @export 
Credentials <- R6::R6Class(
  "Credentials",
  public = list(
    key = NULL,
    
    initialize = function(){
      check <- self$checkCredentials()
      
      if(check['key']){
        self$key <- private$getKey()
      }
      if(check['secret']){
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
      keyring::key_set_with_value("binanceRapi.secret", 
                                  username = Sys.getenv("USERNAME"),
                                  password = secret)
      self$secret <- secret
    },
    
    setKey = function(key){
      keyring::key_set_with_value("binanceRapi.key",
                                  username = Sys.getenv("USERNAME"),
                                  password = key)
      self$key <- key
    },
    
    checkCredentials = function(){
      
      services <- keyring::key_list()$service
      keyExists <- "binanceRapi.key" %in% services
      secretExists <- "binanceRapi.secret" %in% services
      retVal <- c(key = keyExists, secret = secretExists)
      
      if(!all(retVal)){
        warning("The following credentials have not been set: ", 
                paste(names(retVal)[!retVal]), ".", " Some api functionality will not work",
                call. = FALSE)
      }
      
      return(retVal)
    }
  ),
  
  private = list(
    secret = NULL,
    getKey = function(){
      keyring::key_get("binanceRapi.key", username = Sys.getenv("USERNAME"))
    },
    getSecret = function(){
      keyring::key_get("binanceRapi.secret", username = Sys.getenv("USERNAME"))
    }
  )
)