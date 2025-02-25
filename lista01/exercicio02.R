## Programa de Educa��o Continuada Poli-USP
## Engenharia Financeira
##
## EGF004 - Modelos de Previs�o em S�ries Temporais
## Paulo Henrique Freitas Guimar�es

## Exerc�cio 2

# Importa��es
library(forecast)

# Limpando a mem�ria
rm(list=ls(all=TRUE))


# Item A
thetas = c(0.7, 0.5, 0.2)
desvio_padrao = 0.5

Y = arima.sim(n=10000, list(ma=thetas), sd=desvio_padrao)
par(mfrow=c(1, 1))
plot(Y, type="s")


# Item B
par(mfrow=c(1, 1))
acf_sim = Acf(Y)

gama0 = (1 + sum(thetas^2))
gama = c(0, 0, 0)
for (i in 1:2)
{
  gama[i] = thetas[i] + sum(thetas[(i+1):3] * thetas[1:(3-i)])
}
gama[3] = thetas[3]
acf_teo = gama / gama0
acf_teo
acf_sim[1:3]


# Item C
par(mfrow=c(1, 1))
pacf_sim = Pacf(Y)

