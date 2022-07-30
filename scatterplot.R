
plot(1:length(ESn)-0.25,ESn, xlim = c(0,60), col = "blue", type = "p", lwd = 1, pch = 15, cex=0.2,xlab ="päev",ylab="S")
points(1:length(ESn2)+0.25,ESn2, xlim = c(0,60), col = "red", type = "p", pch = 15, cex=0.2)
points(1:length(ESn3), ESn3, xlim = c(0,60), col = "green", type = "p", pch = 15, cex=0.2)
segments(x0 = 1:length(ESn)-0.25, y0 = qSn.05, x1=1:length(ESn)-0.25,y1=qSn.95, col = "deepskyblue")
segments(x0 = 1:length(ESn2), y0 = qSn2.05, x1=1:length(ESn2),y1=qSn2.95, col = "firebrick1")
segments(x0 = 1:length(ESn3)+0.25, y0 = qSn3.05, x1=1:length(ESn3)+0.25, y1=qSn3.95, col = "olivedrab")
legend(x="topright",
       legend = c("naiiv S","var 1 3 muut S", "var 2 3 muut S"),
       fill = c("blue","red","green"))

plot(1:length(EXn)-0.25,EXn, xlim = c(0,60), col = "blue", type = "p", lwd = 1, pch = 15, cex=0.2,xlab ="päev",ylab="S")
points(1:length(EXn2)+0.25,EXn2, xlim = c(0,60), col = "red", type = "p", pch = 15, cex=0.2)
points(1:length(EXn3), EXn3, xlim = c(0,60), col = "green", type = "p", pch = 15, cex=0.2)
segments(x0 = 1:length(EXn)-0.25, y0 = qXn.05, x1=1:length(EXn)-0.25,y1=qXn.95, col = "deepskyblue")
segments(x0 = 1:length(EXn2), y0 = qXn2.05, x1=1:length(EXn2),y1=qXn2.95, col = "firebrick1")
segments(x0 = 1:length(EXn3)+0.25, y0 = qXn3.05, x1=1:length(EXn3)+0.25, y1=qXn3.95, col = "olivedrab")
legend(x="topright",
       legend = c("naiiv X","var 1 3 muut X", "var X 3 muut S"),
       fill = c("blue","red","green"))

plot(1:length(ERn)-0.25,ERn, xlim = c(0,60), col = "blue", type = "p", lwd = 1, pch = 15, cex=0.2,xlab ="päev",ylab="S")
points(1:length(ERn2)+0.25,ERn2, xlim = c(0,60), col = "red", type = "p", pch = 15, cex=0.2)
points(1:length(ERn3), ERn3, xlim = c(0,60), col = "green", type = "p", pch = 15, cex=0.2)
segments(x0 = 1:length(ERn)-0.25, y0 = qRn.05, x1=1:length(ERn)-0.25,y1=qRn.95, col = "deepskyblue")
segments(x0 = 1:length(ERn2), y0 = qRn2.05, x1=1:length(ERn2),y1=qRn2.95, col = "firebrick1")
segments(x0 = 1:length(ERn3)+0.25, y0 = qRn3.05, x1=1:length(ERn3)+0.25, y1=qRn3.95, col = "olivedrab")
legend(x="topright",
       legend = c("naiiv R","var 1 3 muut R", "var 2 R muut S"),
       fill = c("blue","red","green"))
