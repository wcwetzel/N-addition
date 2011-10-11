## amy's N addition plots
#7 Oct 2011

library(ggplot2)

d = read.csv('~/documents/Data/2011 DATA/Amys N addition plants/Amys N addition plants.csv')

plot(galls ~ N, data=d)


p = ggplot(data=d, aes(y=galls, x=factor(N), colour=factor(rep))) +
	geom_point() +
	geom_smooth(aes(group=rep), method='lm')

print(p)

with(d, by(d$galls[!is.na(d$galls)], N[!is.na(d$galls)], mean))