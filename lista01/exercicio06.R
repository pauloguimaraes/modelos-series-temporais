## Programa de Educa��o Continuada Poli-USP
## Engenharia Financeira
##
## EGF004 - Modelos de Previs�o em S�ries Temporais
## Paulo Henrique Freitas Guimar�es

## Exerc�cio 6

# Importa��es
library(forecast)

# Limpando a mem�ria
rm(list=ls(all=TRUE))

mi = 18
theta1 = 0.5
theta2 = 0.4
sigma = sqrt(4)
eps110 = 1.7
eps109 = 1.9

Y111 = mi + theta1*eps110 + theta2*eps109
Y112 = mi + theta2*eps110
Y113 = mi
# Previs�es para os instantes 111, 112 e 113, respectivamente:
Y111
Y112
Y113

sigma_e1 = sigma
sigma_e2 = sqrt(1 + theta1^2) * sigma
sigma_e3 = sqrt(1 + theta1^2 + theta2^2) * sigma
# Vari�ncia dos erros
sigma_e1^2
sigma_e2^2
sigma_e3^2


