if (file.exists("x_dampening_plot.pdf")) {
  #Delete file if it exists
  file.remove("x_dampening_plot.pdf")
}

resonances <- read.csv(dir('/tmp/', full.names=T, pattern="^resonances_x"))

peak_power<-max(resonances$psd_xyz)
peak_freq<-resonances$freq[resonances$psd_xyz==peak_power]
half_power<-peak_power/sqrt(2)

#install.packages("rootSolve")
library(rootSolve)
roots<-uniroot.all(approxfun(resonances$freq,resonances$psd_xyz-half_power),c(1,135))

pdf(file = "/tmp/x_dampening_plot.pdf")
plot(resonances$freq,resonances$psd_xyz,
     type = "l",
     main = "Frequency Response and Damping Ratio",
     xlab = "Frequency [Hz]",
     ylab = "Power")
abline(h=half_power,v=roots)
points(peak_freq,peak_power)
Damping_Ratio=(roots[2]-roots[1])/(2*peak_freq)
Damping_Ratio
trash<-dev.off()