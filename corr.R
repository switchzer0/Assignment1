corr <- function(directory, threshold = 0) {
        #get the list of files; identify length
        file_list <-list.files(directory, full.names = TRUE)
        file_quantity <- length(file_list)
        #create data.frame
        dat <- data.frame()
        #loop through files selecting only those that meet the correlation threshold and adding to data frame
                #take file and count complete cases
                for (i in file_quantity) {
                        cases_count <- sum(complete.cases(read.csv(file_list[i])))
                        #ask "does this meet the threshold?"
                        if(cases_count >= threshold) dat <- rbind(dat, read.csv(file_list[i]))
                }
        #return numeric vector correlating sulfate and nitrate
        cor()
                #subset data.frame to get the sulfate column
                #subset data.frame to get the nitrate column
        
        
        #ask if nrow > 0; if yes, print it; if no return numeric vector length 0
        if(nrow(dat > 0)) print(vector(mode = "numeric"))
        }
}
