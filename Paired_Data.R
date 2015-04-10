# Function to compare 2 numerical paired variables 'x' and 'y' coded as 2 separate columns, using boxplots, density plots, the KW test, and including a summary table
numerical.group.plot2 <- function (x, y, labx, laby, labmain, table = TRUE, ...){
  .pardefault <- par(no.readonly = TRUE)
  par(mar = c(5, 4, 1, 2))
  KW <- kruskal.test(x, y)
  max.x <- x[which.max(x)]
  max.y <- y[which.max(y)]
  if(max.x > max.y){
    max.value <- 1.5*max.x
    min.value <- x[which.min(x)]
    } else {
      max.value <- 1.5*max.y
      min.value <- y[which.min(y)]
  }
  range <- c(min.value, max.value)
  nl <- nlevels(y)
  KW.plot <- boxplot(x, y, cex.lab = 1.25, col = nice.colors(nl), 
    ylim = range,
    names = c(labx, laby), 
    ylab = labmain, ...)
  legend("topleft", bty = "n", paste("Kruskal-Wallis test P value =", 
    format(KW$p.value, digits = 2, width = 6)))
  plot(density(x, na.rm = TRUE), col = 1, main = "",
    xlab = labmain, cex.lab = 1.25, lwd = 1.5, ...)
  lines(density(y, na.rm = TRUE), col = 2, lwd = 1.5, ...)
  legend("topright", legend = c(labx, laby), col = c(1:2),
    bty = "n", lty = 1, lwd = 1.5)
  par(.pardefault)
  if(table == TRUE){
    mean.x <- mean(x, na.rm = TRUE)
    sd.x <- sd(x, na.rm = TRUE)
    median.x <- median(x, na.rm = TRUE)
    iqr.x <- IQR(x, na.rm = TRUE)
    min.x <- min(x, na.rm = TRUE)
    max.x <- max(x, na.rm = TRUE)
    descriptive.x <- round(c(mean.x, sd.x, median.x, iqr.x, min.x, 
      max.x), digits = 1)
    mean.y <- mean(y, na.rm = TRUE)
    sd.y <- sd(y, na.rm = TRUE)
    median.y <- median(y, na.rm = TRUE)
    iqr.y <- IQR(y, na.rm = TRUE)
    min.y <- min(y, na.rm = TRUE)
    max.y <- max(y, na.rm = TRUE)
    descriptive.y <- round(c(mean.y, sd.y, median.y, iqr.y, min.y, 
      max.y), digits = 1)
    descriptive.names <- c("Mean", "Standard Deviation", "Median", 
      "Interquartile Range", "Mininum", "Maximum")
    col.names <- c("Statistics", labx, laby)
    final.table <- cbind(descriptive.names, descriptive.x, descriptive.y)
    colnames(final.table) <- col.names
    knitr::kable(final.table, align = c("l", "c", "c"))
  }
}

# Function to compare 1 numerical variable 'x' by 1 factor grouping variable 'y' using boxplots, density plots, the KW test, and including a summary table
numerical.group.plot <- function (x, y, lab, table = TRUE, ...){
  .pardefault <- par(no.readonly = TRUE)
  par(mar = c(5, 4, 1, 2))
  KW <- kruskal.test(x ~ y)
  max.value <- 1.5*x[which.max(x)]
  min.value <- x[which.min(x)]
  range <- c(min.value, max.value)
  nl <- nlevels(y)
  KW.plot <- boxplot(x ~ y, cex.lab = 1.25, col = nice.colors(nl), 
    ylim = range,
    names = levels(y), 
    ylab = lab, ...)
  legend("topleft", bty = "n", paste("Kruskal-Wallis test P value =", 
    format(KW$p.value, digits = 2, width = 6)))
  # Density plots
  d.plots <- tapply(x, INDEX = y, FUN = density, na.rm = TRUE)
  d.max <- vector()
  for(i in 1:nlevels(y)){
    d.max[i] <- max(d.plots[[i]]$y)
  }
  plot(d.plots[[1]], col = 1, lwd = 1.5, main = "",
    cex.lab = 1.25, xlab = lab,
    ylim = c(0, d.max[which.max(d.max)])
    )
  for(i in 2:nlevels(y)){
    lines(d.plots[[i]], col = i, lwd = 1.5)
  }
  legend("topright", legend = levels(y),
    col = 1:nlevels(y),
    bty = "n", lty = 1, lwd = 1.5)
  par(.pardefault)
  # Summary table
  if(table == TRUE){
    mean.x <- tapply(x, INDEX = y, FUN = mean, na.rm = TRUE)
    sd.x <- tapply(x, INDEX = y, FUN = sd, na.rm = TRUE)
    median.x <- tapply(x, INDEX = y, FUN = median, na.rm = TRUE)
    iqr.x <- tapply(x, INDEX = y, FUN = IQR, na.rm = TRUE)
    min.x <- tapply(x, INDEX = y, FUN = min, na.rm = TRUE)
    max.x <- tapply(x, INDEX = y, FUN = max, na.rm = TRUE)
    final.table <- round(rbind("Mean" = mean.x, "Standard Deviation" = sd.x, 
      "Median" = median.x, "Interquartile Range" = iqr.x, "Minimum" = min.x, 
      "Maximum" = max.x), digits = 1)
    knitr::kable(final.table, align = c("c"))
  }
}

# Function to
categorical.group.plot2 <- function(x, y, table = TRUE, ...){
  .pardefault <- par(no.readonly = TRUE)
  xy_Table <- table(x, y)
  xy_Fisher <- fisher.test(x, y)
  P <- format(xy_Fisher$p.value, digits = 2, width = 6)
  xy_plot <- barplot(xy_Table,
    beside = TRUE,
    legend.text = TRUE,
    col = nice.colors(nlevels(x)),
    ylim = c(0, 1.66*xy_Table[which.max(xy_Table)]),
    args.legend = list(bty = "n"),
    cex.lab = 1.25,
    ylab = "No. Cases",
    ...)
  text(xy_plot,
    paste("N =", xy_Table),
    y = xy_Table,
    pos = 3)
  legend("topleft",
    bty = "n",
    paste("Fisher's exact test P value =", P))
  par(.pardefault)
  if(table == TRUE){knitr::kable(table(x, y), align = c("c", "c"))}
}
