dd_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (dd_colors)

  dd_colors[cols]
}
