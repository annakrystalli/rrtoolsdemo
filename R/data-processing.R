#' Get yearly summaries
#'
#' Get yearly summaries of  mean life expectancy and maximum gdp from gapminder
#' data.
#' @param df a data.frame or tibble of gapminder data, as sourced from r package
#' \pkg{gapminder}
#' @importFrom dplyr "%>%"
#' @return
#' @export
#'
#' @examples
#' \dontrun{
#' library(gapminder)
#' df <- gapminder
#' summarise_by_year(df)
#' }
summarise_by_year <- function(df){
    df %>%
        dplyr::group_by(year) %>%
        dplyr::summarise(life_exp_mean = mean(lifeExp),
                  gdppc_mean = mean(gdpPercap))
}
