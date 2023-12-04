library(caret)

input <- function(inputfile) {
   lift_results <<- readRDS(inputfile)
}

run <- function() {}

output <- function(outputfile) {
cal_obj <- calibration(Class ~ FDA + LDA, data = lift_results)
plot(cal_obj, auto.key = list(columns = 2,
                                            lines = TRUE,
                                            points = FALSE))
ggsave(outputfile)
}
