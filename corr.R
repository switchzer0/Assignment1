corr <- function(directory, threshold = 0) {
        #get the list of files; identify length
        file_list <-list.files(directory, full.names = TRUE)
        file_quantity <- length(file_list)
        
        #create numeric vector and data.frame
        cors <- as.numeric()
        dat <- data.frame()
        #loop through files, running cor() on those those greater than threshold
        for (i in 1:file_quantity) {
                dat <- read.csv(file_list[i])
                if(sum(complete.cases(dat)) > threshold) {
                        cors <- rbind(cors, cor(dat[,2], dat[,3], use = "na.or.complete"))
                }
        }
                #coerce cors to vector
                as.vector(cors)
}