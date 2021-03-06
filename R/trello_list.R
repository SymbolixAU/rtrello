#' Trello lists
#'
#' Retrieve all cards in a list
#' @import jsonlite
#' @export
#' @param list_id string list id
#' @param trello trello object containing your key and token
trello_list <- function(list_id, trello, card_status = c("all", "open", "closed", "none")){

	jsonlite::fromJSON(paste0("https://api.trello.com/1/lists/", list_id,
														"?fields=name&cards=", card_status, "&card_fields=all&key=", trello@key,
														"&token=", trello@token))

}
