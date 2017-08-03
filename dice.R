
library(dice)


getEventProb(nrolls = 6,
             ndicePerRoll = 1,
             nsidesPerDie = 4,
             eventList = list(4, 3, c(1,2)),
             orderMatters = FALSE)


getSumProbs(ndicePerRoll = 6,
            nsidesPerDie = 6,
            nkept = 3,
            dropLowest = TRUE)

getSumProbs(ndicePerRoll = 6,
            nsidesPerDie = 6)



