

library(tidyverse)
library(gridExtra)
library(grid)


data %>%
  ggplot(aes(x = x_variable ,y = y_variable))+
  geom_point(color="white")+ # ta vekk "original-punkt"
  geom_text(aes(label=geo),size=3)+ # label = geo fører til at landsnavn blir brukt isteden for punkt
  labs(x ="Tittel x-aksel", y = "Tittel y-aksel")+
  theme_classic()+
  geom_smooth(method=lm, se=FALSE) + # Korrelasjonslinje
  geom_text(aes(x = max(x_variable), y = max(y_variable), #Plassering av korrelasjons-koeffisient 
                label = paste("Korrelasjon:", round(cor(x_variable, y_variable), 2))),
            hjust = 1, vjust = 1, size = 4, color = "red")



# To grafer i samme figur

# Graf 1
plot_1 <- data1 %>%
  ggplot(aes(x = x_variable ,y = y_variable_1))+
  geom_point(color="white")+ # ta vekk "original-punkt"
  geom_text(aes(label=geo),size=3)+ # label = geo fører til at landsnavn blir brukt isteden for punkt
  labs(x ="Tittel x-aksel", y = "Tittel y-aksel")+
  theme_classic()+
  geom_smooth(method=lm, se=FALSE) + # Korrelasjonslinje
  geom_text(aes(x = max(x_variable), y = max(y_variable), #Plassering av korrelasjons-koeffisient 
                label = paste("Korrelasjon:", round(cor(x_variable, y_variable), 2))),
            hjust = 1, vjust = 1, size = 4, color = "red")


# Graf 2
plot_2 <- data2 %>%
  ggplot(aes(x = x_variable ,y = y_variable_2))+
  geom_point(color="white")+ # ta vekk "original-punkt"
  geom_text(aes(label=geo),size=3)+ # label = geo fører til at landsnavn blir brukt isteden for punkt
  labs(x ="Tittel x-aksel", y = "Tittel y-aksel")+
  theme_classic()+
  geom_smooth(method=lm, se=FALSE) + # Korrelasjonslinje
  geom_text(aes(x = max(x_variable), y = max(y_variable), #Plassering av korrelasjons-koeffisient 
                label = paste("Korrelasjon:", round(cor(x_variable, y_variable), 2))),
            hjust = 1, vjust = 1, size = 4, color = "red")

# Kode som setter de to grafene side ved side

grid.arrange(plot_1,plot_2, nrow = 1,  top = textGrob("Tittel",gp=gpar(fontsize=14,font=3)))
