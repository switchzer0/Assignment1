corr <- function(directory, threshold = 0) {
        #get the list of files; identify length
        file_list <-list.files(directory, full.names = TRUE)
        file_quantity <- length(file_list)
        #create numeric vector
        cors <- as.numeric()
        dat <- data.frame()
        #loop through files, IDing those that meet the threshold, running cor() on those ones only, and adding to vector
        for (i in file_quantity) {
                if(as.integer(subset(complete(directory,i),select = nobs)) >= threshold) dat <- read.csv(file_list[i])
                cors <- as.vector(rbind(cors, cor(dat[,2], dat[,3], use = "na.or.complete")))
        }
}