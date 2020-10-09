#' @importFrom ggplot2 discrete_scale scale_color_gradientn
#' @export
scale_color_dd <-
  function(palette = "main5",
           manual.pick = NULL,
           discrete = TRUE,
           reverse = FALSE,
           ...) {
    pal <-
      dd_pal(palette = palette,
             manual.pick = manual.pick,
             reverse = reverse)

    if (discrete) {
      discrete_scale("colour", paste0("dd_", palette), palette = pal, ...)
    } else {
      scale_color_gradientn(colours = pal(256), ...)
    }
  }

#' @importFrom ggplot2 discrete_scale scale_fill_gradientn
#' @export
scale_fill_dd <-
  function(palette = "main5",
           manual.pick = NULL,
           discrete = TRUE,
           reverse = FALSE,
           ...) {
    pal <-
      dd_pal(palette = palette,
             manual.pick = manual.pick,
             reverse = reverse)

    if (discrete) {
      discrete_scale("fill", paste0("dd_", palette), palette = pal, ...)
    } else {
      scale_fill_gradientn(colours = pal(256), ...)
    }
  }
