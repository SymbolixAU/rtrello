#' Trello Boards
#'
#' Retreive all boards associated with your project
#'
#' @import jsonlite

#' @export
#' @param key string your trello access key
#' @param token string your trello access token
trello_boards <- function(key, token){

}


#' Trello Board
#'
#' Retrieve information for a specific board
#'
#' @export
#' @param board_id the board id - found in the URL of a given board - https://trello.com/b/board_id/board_name
#' @param key string your trello access key
#' @param token string your trello access token
trello_board <- function(board_id, key, token){

	jsonlite::fromJSON(paste0("https://api.trello.com/1/boards/", board_id, "/lists?token=", token, "&key=", key))

}

