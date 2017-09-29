# extracting the data


result<-Batting%>%
      filter(playerID=='ruthba01')%>%
      select(yearID,SO,HR)

# scatterplot

ggplot()+
  geom_point(data=result,aes(x=SO,y=HR))+
  xlab("strikeouts")+
  ylab("homeruns")

# histogram

ggplot()+
  geom_histogram(data=result,aes(x=HR),bins=5,color="blue",fill="white")+
  xlab("homeruns")

# time series

ggplot()+
  geom_point(data=result,aes(x=yearID, y=HR))+
  geom_line(data=result,aes(x=yearID, y=HR))+
  xlab("year")+
  ylab("homeruns")


