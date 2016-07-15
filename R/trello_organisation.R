#' Trello Organisation
#'
#' Retrieve informatin about your organisation on trello


#' @import jsonlite
#' @export
#' @param organisation string name of organisation
#' @param trello object containing your key and token
trello_organisation <- function(organisation, trello){

	jsonlite::fromJSON(paste0("https://api.trello.com/1/organizations/", organisation,
														"/boards?key=", trello@key,
														"&token=", trello@token))

}
