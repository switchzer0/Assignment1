pollutantmean <- function(directory, pollutant, id = 1:332) {
        
        #get files list
        file_list <-list.files(directory, full.names = TRUE)
        
        #subset files list
        dat <- data.frame()
        for (i in id) {
                dat <- rbind(dat, read.csv(file_list[i]))
        }
        
        #select the variable for which to print the mean
        mean(dat[,pollutant],na.rm = TRUE)
}
