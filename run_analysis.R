## STEP 1 is to create a temporary directory where all the work is done
## call this directory GCD_Project to agree with the README.md file in GitHub

if (!file.exists("GCD_Project"))
	{
	dir.create("GCD_Project")
	}

## STEP 2 is to load any packages the script might need

library (XML)
library (RCurl)



## STEP 3 is to download the file
## Note at this point your working directory contains the directory "Phone_data"

fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 
download.file(fileURL, destfile = "./GCD_Project/SourceData.zip", method="curl")
xData <- getURL(fileURL)
RawData <- gzfile(fileURL)

