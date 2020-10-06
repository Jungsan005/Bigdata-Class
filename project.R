head(WWWusage)


df <- read.csv("seoul.csv",encoding = 'utf-8')

df
?ts
as.ts.str(df)
              
table(df$year=='2010')



gnp <- ts(df$price, start = c(2010, 1), frequency = 12)

str(gnp)
plot(gnp)


plot(stl(gnp, s.window = "periodic"))

install.packages("tseries")

library(tseries)
