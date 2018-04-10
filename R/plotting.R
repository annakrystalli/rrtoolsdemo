#' Plot mean life expectancy against mean GDP
#'
#' @param df yearly means data.frame as output by \code{summarise_by_year}
#' @param palette specify the viridis palette option
#'
#' @return
#' @export
#'
#' @examples
plot_gdp_v_lifeexp <- function(df, palette = c("viridis", "magma", "inferno",
                                               "plasma")){
palette <- match.arg(palette)
    df %>% ggplot2::ggplot(ggplot2::aes(gdppc_mean, life_exp_mean, color = year)) +
        ggplot2::stat_smooth(method = "lm", color = "black") +
        ggplot2::geom_point(size = 6) +
        viridis::scale_color_viridis(option = palette) +
        ggplot2::xlab("mean GDP per capita ($)") +
        ggplot2::ylab("life expectancy")

}
