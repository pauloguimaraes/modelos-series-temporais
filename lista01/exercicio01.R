## Programa de Educa��o Continuada Poli-USP
## Engenharia Financeira
##
## EGF004 - Modelos de Previs�o em S�ries Temporais
## Paulo Henrique Freitas Guimar�es

## Exerc�cio 1


# Limpando a mem�ria
rm(list=ls(all=TRUE))

# Dados de entrada
x = c(907, 926, 506, 741, 789, 889, 874, 510, 529, 420, 679, 872, 924, 607, 452, 729, 794, 844, 1010, 621)
y = c(11.20, 11.05, 8.64, 9.21, 9.42, 10.08, 9.45, 6.73, 7.24, 6.12, 7.63, 9.43, 9.46, 7.64, 6.92, 8.95, 9.33, 10.23, 11.77, 7.41)

dados_matrix = matrix(c(x, y), nrow = length(x), ncol = 2)
write.table(dados_matrix, "dados_ex1.txt",col.names = c("X","Y"))

dados_xy = read.table("dados_ex1.txt", head=T)
X = dados_xy$X
Y = dados_xy$Y

# Faz a regress�o linear
regress = lm(Y ~ X)
# Resume e mostra a regressão linear
summary(regress)
# M�dia dos res�duos da regress�o (pr�ximo de 0 = bom)
mean(residuals(regress))
# Teste de Shapiro para visualizar se a hip�tese nula � v�lida (dados normalmente distribu�dos)
shapiro.test(residuals(regress))
