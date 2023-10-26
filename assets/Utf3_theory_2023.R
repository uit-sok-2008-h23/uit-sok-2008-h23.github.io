library(tidyverse)

rm(list = ls())

l_1 <- seq(0, 60, by = .01) 


df <- data.frame(l_1)

#lag aksen for tegningen

axes_1 <- ggplot(df, aes(l_1))+
  labs(x="Fritid", y="Konsum i 10-tall") +
  theme(axis.title = element_text(size = 10),
        plot.title = element_text(size = 10),
        panel.background = element_blank(), # hvit bakgrunn
        axis.line = element_line(colour = "black"), # sett inn akselinjer
        axis.title.x = element_text(hjust = 1),
        axis.title.y = element_text(angle = 0, vjust = 1, hjust=1))+ # juster labels på aksene  
  coord_fixed(ratio = 1)+ # lik skala for x og y aksen
  scale_x_continuous(limits = c(0, 70), expand = c(0, 0))+
  scale_y_continuous(limits = c(0, 1000), expand = c(0, 0))+ # begrense aksene
  coord_fixed(ratio = (70 - 0) / (1000 - 0)) 


# nyttefunkjsonen som brukes U=c^.5x l^.5 (Cobb-Douglas)

# vi angir noen indifferenskurver
I_0 <- function(l_1) (U0^2)/(l_1)  # bytt ut U0 mot et relevant nivå på nytten
I_1 <- function(l_1) (U1^2)/(l_1) # bytt ut U1 mot et relevant nivå på nytten


# Reservasjonslønn uten stønad
wr0 <- function(l_1) {
  return(Sjærningspunkt - koeffisient * l_1) #sett inn tall for skjærningspunkt med Y-akselen og koeffisienten til l_1
}

# Reservasjonslønn med stønad
wr1 <- function(l_1) {
  return(Sjærningspunkt - koeffisient * l_1) #sett inn tall for skjærningspunkt med Y-akselen og koeffisienten til l_1
}


figur_2 <- axes_1+
  stat_function(df,
                fun=I_0,
                mapping = aes() #Indifferansekurve 0
  )+
  stat_function(df,
                fun=I_1,
                mapping = aes() #Indifferansekurve 1
  )+
  annotate("text",
           x=X, #Sett inn tall
           y=Y, #Sett inn tall
           label=expression(u[0]))+ #Navn indifferansekurve 0
  annotate("text",
           x=X, #Sett inn tall
           y=Y, #Sett inn tall
           label=expression(u[1]))+#Navn indifferansekurve 1
  geom_segment(aes(x = 0, y = wr0(0), xend = 60, yend = wr0(60)), color="darkblue") + #Kurve som beskriver reservasjonslønn da stønad == 0
  geom_segment(aes(x = 0, y = wr1(0), xend = 60, yend = wr1(60)), color="blue") + #Kurve som beskriver reservasjonslønn da stønad == 100
  geom_segment(aes(x=X, y=Y, xend=X, yend=Y))+ #Sett inn tall som beskriver budsjettbetingelsen ved l0 = 60 (vertikal linje)
  geom_segment(aes(x=X, y=Y, xend=X, yend=Y), linetype="dashed")+ #Sett inn tall som beskriver arbeidsfri inntekt
  geom_segment(aes(x=X, y=Y, xend=X, yend=Y), linetype="dashed", color="red")+ #Identifiser heltidsarbeid. (sett inn tall)
  annotate("text",x=X,y=Y, #sett inn tall
           label=expression()) #Sett inn navn

