#' @importFrom ggplot2 ggplotGrob ggsave
#' @importFrom ggplotify as.ggplot
#' @importFrom gtable gtable_add_grob
#' @export
finalise_dd_plot <-
  function(plot,
           path,
           width.px = 720,
           height.px = 640,
           raster.logo = NULL) {
    # set logo
    if (is.null(raster.logo)) {
      raster_grob_logo <- dd_logo
    } else {
      raster_grob_logo <- raster.logo
    }
    # combine plot & logo
    plot_gtable <- ggplot2::ggplotGrob(plot)
    # adjust logo's position
    logo_t <- max(plot_gtable$layout$t) + 1
    logo_l <- max(plot_gtable$layout$l)
    # adjust title, subtitle, caption position
    if (!identical(plot_gtable$layout[plot_gtable$layout$name %in% c('caption', 'title', 'subtitle'),], numeric(0))) {
      plot_gtable$layout[plot_gtable$layout$name %in% c('caption', 'title', 'subtitle'),]$l = 2
    }

    combined_plot <-
      ggplotify::as.ggplot(
        gtable::gtable_add_grob(
          plot_gtable,
          raster_grob_logo,
          logo_t,
          logo_l,
          z = Inf,
          clip = "off",
          name = 'logo'
        )
      )

    # ggsave
    ggplot2::ggsave(
      filename = path,
      plot = combined_plot,
      width = (width.px / 144),
      height = (height.px / 144),
      bg = "transparent"
    )
  }
