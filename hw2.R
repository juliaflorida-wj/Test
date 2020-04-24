v = list(rnorm(100))

start_time1 <- Sys.time()
l <- lapply(v, sum)
l
end_time1 <- Sys.time()
elapsed_time <- as.numeric(difftime(time1 = end_time1,
                                    time2 = start_time1,
                                    units = "secs"))
cat("elapsed time1 : ",sprintf("%.3f",elapsed_time),"sec",sep="")

start_time2 <- Sys.time()
tmp <- 0
for(i in c(1:100)){
  tmp <- tmp + v[[1]][i]
}
tmp
end_time2 <- Sys.time()
elapsed_time <- as.numeric(difftime(time1 = end_time2,
                                    time2 = start_time2,
                                    units = "secs"))
cat("elapsed time2: ",sprintf("%.3f",elapsed_time),"sec",sep="")
