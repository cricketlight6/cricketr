##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 29 Jun 2015
# Function: checkBatsmanInForm
# This function checks whether the batsman is In-Form or Out-of-Form
#
###########################################################################################
checkBatsmanInForm <- function(file, name="A Hitter",alpha=0.05) {
    
    # Clean the file
    batsman <- clean(file)
    
    # Get the runs in career
    runs <- batsman$Runs
    len <- length(runs)
    
    # Take 90% as polpulation
    poplen <- floor(0.9 * len)
    popruns <- runs[1:poplen]
    
    #Calculate the mean 'mu' of this runs population
    mu <- round(mean(popruns),2)
    
    # Get the offset for the sample 
    m <- poplen+1
    
    # Create a sample from last 10% of runs scored
    sample <- runs[m:len]
    
    # Calculate mean & SD of sample
    xbar <- round(mean(sample),2)
    s <- round(sd(sample),2)
    
    # No of degress of freedom
    n <- len-poplen
    
    # The NULL hypothesis H0 will be the batsman scores at the mean or above the meanb
    # Compute t statistic
    t <- (xbar - mu)/(s/sqrt(n))
    
    # The Ha will be that the batsman scores less than the current average and hence out of form
    # Compute the lower tail
    pValue <- round(pt(t, n, lower.tail = TRUE),6)
    
    
    if(pValue > alpha){
        
        str4 <- paste(name,"'s Form Status: In-Form because the p value:", pValue," is greater than alpha= ", alpha)
    } else {
        #print(str2)
        str4 <-paste(name, "'s Form Status: Out-of-Form because the p value:", pValue," is less than alpha= ", alpha)
    }
    cat("*******************************************************************************************\n\n")
    cat("Population size:",poplen," Mean of population:",mu,"\n")
    cat("Sample size:",n," Mean of sample:",xbar, "SD of sample:", s,"\n\n")
    cat("Null hypothesis H0 :",name,"'s sample average is within 95% confidence interval 
        of population average\n")
    cat("Alternative hypothesis Ha :",name,"'s sample average is below the 95% confidence
        interval of population average\n\n")
    print(str4)
    cat("*******************************************************************************************\n\n")
    
}