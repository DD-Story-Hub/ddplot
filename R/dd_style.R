#' @importFrom ggplot2 theme margin element_text element_blank element_line element_rect
#' @importFrom grid unit
#' @export
dd_style <- function() {
  font <- "NotoSansTC-Regular"
  font_medium <- "NotoSansTC-Medium"
  font_bold <- "NotoSansTC-Bold"

  ggplot2::theme(
    #text format:
    plot.title = ggplot2::element_text(
      family = font_bold,
      size = 18,
      color = "#24201f",
      margin = ggplot2::margin(0, 0, 0, 0)
    ),
    plot.subtitle = ggplot2::element_text(
      family = font,
      size = 12,
      margin = ggplot2::margin(6, 0, 20, 0)
    ),
    plot.caption = ggplot2::element_text(
      family = font,
      color = "#7b7675",
      size = 8,
      margin = ggplot2::margin(9, 0, 0, 0),
      hjust=0
    ),
    #legend format
    legend.position = "top",
    legend.justification = c("right", "top"),
    legend.text.align = 0,
    legend.background = ggplot2::element_blank(),
    legend.title = ggplot2::element_blank(),
    legend.key = ggplot2::element_blank(),
    legend.margin = margin(0, 0, 1.5, 0),
    legend.text = ggplot2::element_text(
      family = font,
      size = 8,
      color = "#24201f"
    ),

    #axis format
    axis.title = ggplot2::element_blank(),
    axis.text = ggplot2::element_text(
      family = font,
      size = 10,
      color = "#24201f"
    ),
    axis.text.x = ggplot2::element_text(margin = ggplot2::margin(3, b = 10)),
    axis.ticks = ggplot2::element_blank(),

    #grid lines
    panel.grid.minor = ggplot2::element_blank(),
    panel.grid.major.y = ggplot2::element_line(color = "#e0dbd9"),
    panel.grid.major.y = ggplot2::element_line(color = "#e0dbd9"),

    #blank background
    panel.background = ggplot2::element_blank(),

    #strip background
    strip.background = ggplot2::element_rect(fill = "white"),
    strip.text = ggplot2::element_text(
      family = font_medium,
      size = 8,
      hjust = 0
    ),

    #plot margin
    plot.margin = grid::unit(c(0.5,0.5,0.5,0.5), "cm")
  )
}

