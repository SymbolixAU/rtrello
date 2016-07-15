#' Trello
#'
#' Trello object to store key and token variables


#' @export
#' @param key string your trello access key
#' @param token string your trello access token
#' @examples
#' ## create trello object to store your key and token
#' trello <- trello(key = "abc", token = "xyz")
trello <- function(key, token){
	new( "trello", key = key, token = token )
}

