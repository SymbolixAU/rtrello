#' Trello Boards
#'
#' Retrieve all boards associated with your project
#'
#' @import jsonlite
#' @export
#' @param trello trello object containing your key and token
trello_boards <- function(trello){

}


#' Trello Board
#'
#' Retrieve information for a specific board
#'
#' @export
#' @param board_id the board id - found in the URL of a given board - https://trello.com/b/board_id/board_name
#' @param trello trello object containing your key and token
trello_board <- function(board_id, trello){

	jsonlite::fromJSON(paste0("https://api.trello.com/1/boards/", board_id,
														"/lists?token=", trello@token,
														"&key=", trello@key))

}

