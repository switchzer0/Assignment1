complete <- function(directory, id = 1:332) {
        #get list of files
        file_list <-list.files(directory, full.names = TRUE)
        
        #loop through files, adding computed data from ones with complete cases to dataframefor (i in id) {
        dat <- data.frame()
        for (i in id) {
                cases_count <- sum(complete.cases(read.csv(file_list[i])))
                dat <- rbind(dat, c(i, cases_count))
                }

        #specify colnames
        colnames(dat) <- c("id","nobs")
        
        #return dataframe
        print(dat)
}