setwd('~/Documents/KPMG/Training/Lighthouse_DS/thinkstat2')
load(".RData")


# library('')


preg <- read.csv('2002FemPreg.csv'
                #,nrows = 10
               )
dim(preg)
print(preg)

colnames(preg)

colnames(preg)[2]

pregordr <- preg["pregordr"]
head(pregordr)
str(pregordr)
class(pregordr)
lapply(pregordr,class)

pregordr[1,]
pregordr[3:5,]



# pregordr <- preg$pregordr
# head(pregordr)
# str(pregordr)
# class(pregordr)

preg2 <- preg[,c("caseid","prglngth","outcome","pregordr","birthord",
             "birthwgt_lb","birthwgt_oz","totalwgt_lb","agepreg","finalwgt")]
View(preg2[1:10,])


# CleanFemPreg <- function(preg){
#   #preg as a data.frame
#   # preg$agepreg <- preg$agepreg/100.0
#   
#   # preg$birthwgt_lb <- ifelse(preg$birthwgt_lb == c(97,98,99), NA, preg$birthwgt_lb)
#   # preg$birthwgt_oz <- ifelse(preg$birthwgt_oz == c(97,98,99), NA, preg$birthwgt_oz)
#   
#   preg$totalwgt_lb <- preg$birthwgt_lb + preg$birthwgt_oz / 16.0
#   
#   return(preg)
# }
# 
# preg2 <- CleanFemPreg(preg2)
# head(preg2)


# counts the number of times each value appears
table(preg$outcome,useNA = "ifany")
table(preg$birthwgt_lb,useNA = "ifany")


preg[preg$caseid == 10229,"outcome"]

sum(is.na(preg$birthwgt_lb))

mean(preg$totalwgt_lb,na.rm = TRUE)

preg["totalwgt_kg"] = preg$totalwgt_lb/2.2

sum(is.na(preg$totalwgt_kg))

mean(preg$totalwgt_kg,na.rm = TRUE)



resp <- read.csv("2002FemResp.csv",header=TRUE)
dim(resp)
View(resp[c(1:5,7640:7643),c(1:3,3085:3087)])

table(resp$age_r,useNA = "ifany")

min(resp$age_r)
max(resp$age_r)

resp[resp$caseid==2298,]
preg[preg$caseid==2298,]

resp[resp$caseid==1,"age_r"]

preg[preg$caseid==5012,"totalwgt_lb"]



