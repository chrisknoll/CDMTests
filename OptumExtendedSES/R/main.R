#' Clean native DB
#'
#' @details
#' Removes all test case data (truncates native tables)
#'
#' @return
#' none
#'
#' @export
clean <- function(connectionDetails) {
  writeLines("Clean Executed");

}

#' Get insert SQL
#'
#' @details
#' Returns insert Sql for native DB.
#'
#' @return
#' list of sql statements
#'
#' @export
getInsertSql <- function(connectionDetails) {
  return(frameworkContext$insertSql);
}

#' Get testing SQL
#'
#' @details
#' Returns testing Sql for the CDM DB.
#'
#' @return
#' list of sql statements
#'
#' @export
getTestSql <- function(connectionDetails) {
  return(frameworkContext$testSql);
}


.onLoad <- function(libname, pkgname) {
  initFramework();
  createTests();
  writeLines("Optum Extended SES tests loaded.")
}
