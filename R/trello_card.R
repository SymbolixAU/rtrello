#' Trello Cards
#'
#' Retrieve all cards on a board
#' @import jsonlite

#' @export
#' @param card_id string card id
#' @param trello trello object containing your key and token
trello_card <- function(card_id, trello){

	jsonlite::fromJSON(paste0("https://api.trello.com/1/cards/", card_id,
														"?fields=name,idList&member_fields=fullName&key=", trello@key,
														"&token=", trello@token))

}



