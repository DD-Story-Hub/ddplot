#' @importFrom ggplot2 theme margin element_text element_blank element_line element_rect
#' @export
dd_style <- function() {
  font <- "NotoSansTC-Regular"
  font_medium <- "NotoSansTC-Medium"
  font_bold <- "NotoSansTC-Bold"

  ggplot2::theme(
    #text format:
    plot.title = ggplot2::element_text(
      family = font_bold,
      size = 28,
      color = "#24201f",
      margin = ggplot2::margin(18, 18, 0, 0)
    ),
    plot.subtitle = ggplot2::element_text(
      family = font,
      size = 22,
      margin = ggplot2::margin(9, 0, 9, 0)
    ),
    plot.caption = ggplot2::element_blank(),

    #legend format
    legend.position = "top",
    legend.justification = c("right", "top"),
    legend.text.align = 0,
    legend.background = ggplot2::element_blank(),
    legend.title = ggplot2::element_blank(),
    legend.key = ggplot2::element_blank(),
    legend.margin = margin(3, 3, 3, 3),
    legend.text = ggplot2::element_text(
      family = font,
      size = 12,
      color = "#24201f"
    ),

    #axis format
    axis.title = ggplot2::element_blank(),
    axis.text = ggplot2::element_text(
      family = font,
      size = 14,
      color = "#24201f"
    ),
    axis.text.x = ggplot2::element_text(margin = ggplot2::margin(5, b = 10)),
    axis.ticks = ggplot2::element_blank(),
    axis.line = ggplot2::element_blank(),

    #grid lines
    panel.grid.minor = ggplot2::element_blank(),
    panel.grid.major.y = ggplot2::element_line(color = "#e0dbd9"),
    panel.grid.major.x = ggplot2::element_blank(),

    #blank background
    panel.background = ggplot2::element_blank(),

    #strip background
    strip.background = ggplot2::element_rect(fill = "white"),
    strip.text = ggplot2::element_text(
      family = font_medium,
      size = 16,
      hjust = 0
    )
  )
}
