# qq_full_style.R -- the shared look of the full (unthinned) QQ plots on the
# beta-binomial pages: observed data in teal, permutations in light blue, a
# dashed diagonal, a plain frame and the legend inside the panel. Each panel
# has its own y-axis.
#
#   source("code/qq_full_style.R")          # pages knit from the site root
#   qq_panel(d, "title")                     # d: dataset, expected, observed
#   qq_panels(d, "run", levels, ncol = 3)    # one panel per value of a column
suppressMessages({ library(data.table); library(ggplot2) })

QQCOL <- c("Permutation" = "#8fb0e6", "Observed data" = "#14998e")

qq_kind <- function(d) {
  d[, kind := factor(ifelse(dataset == "real", "Observed data", "Permutation"), levels = names(QQCOL))]
  invisible(d)
}

qq_panel <- function(d, title = NULL, legend = TRUE, ylim = NULL, point_size = 0.6, base_size = 12) {
  d <- qq_kind(copy(d))   # always relabel from `dataset`: an existing `kind` column may use other labels
  p <- ggplot(d, aes(expected, observed, colour = kind)) +
    geom_abline(slope = 1, intercept = 0, linetype = "dashed", colour = "black", linewidth = 0.4) +
    geom_point(data = d[kind == "Observed data"], size = point_size, shape = 16) +
    geom_point(data = d[kind == "Permutation"], size = point_size, shape = 16, alpha = 0.8) +
    scale_colour_manual(values = QQCOL, breaks = names(QQCOL), name = NULL, drop = FALSE) +
    guides(colour = if (legend) guide_legend(override.aes = list(size = 2.2, alpha = 1)) else "none") +
    expand_limits(x = 0, y = 0) +
    scale_x_continuous(expand = expansion(mult = c(0, 0.02))) +
    scale_y_continuous(expand = expansion(mult = c(0, 0.03))) +
    labs(x = expression(Expected ~ -log[10](p)), y = expression(Observed ~ -log[10](p)), title = title) +
    theme_classic(base_size = base_size) +
    theme(plot.title = element_text(hjust = 0.5, size = base_size + 1),
          panel.grid.major = element_line(colour = "grey93", linewidth = 0.3),
          legend.position = c(0.02, 0.98), legend.justification = c(0, 1),
          legend.background = element_blank(), legend.key = element_blank(),
          legend.text = element_text(size = base_size - 3))
  if (!is.null(ylim)) p <- p + coord_cartesian(ylim = ylim)
  p
}

# one panel per level of column `by`, each with its own y-axis; legend in every
# panel, or only the first (legend = "first") when there are many panels
qq_panels <- function(d, by, levels = NULL, ncol = 2, legend = c("all", "first"), ylim = NULL,
                      titles = NULL, point_size = 0.6, base_size = 12) {
  legend <- match.arg(legend)
  if (is.null(levels)) levels <- unique(as.character(d[[by]]))
  if (is.null(titles)) titles <- setNames(levels, levels)
  ps <- lapply(seq_along(levels), function(i) {
    lv <- levels[i]
    qq_panel(d[as.character(get(by)) == lv], titles[[lv]], legend = legend == "all" || i == 1,
             ylim = ylim, point_size = point_size, base_size = base_size)
  })
  patchwork::wrap_plots(ps, ncol = ncol)
}
