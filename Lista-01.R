# Questão 1 ####
x <- 4
y <- 3 * x + 2
x <- 10
# Q 1.1
#x = 10
#y = 14
# a função paste() é utilizada para juntar o texto com o valor 
# armazenado na variável antes de mandar o resultado para print().
print(paste("O valor de x é:", x))
print(paste("O valor de y é:", y))
# Q 1.2
#Quando y é calculado:
#y=3×4+2=14
#Depois disso, o valor fica armazenado na memória.

# Q 1.3
x <- 4
y <- 3 * x + 2  # y recebe 14
x <- 10
y <- 3 * x + 2  # Recalcula y com o novo valor de x (y passa a ser 32)
print(paste("O valor de x é:", x))
print(paste("O novo valor de y é:", y))

# Questão 2 ####

a <- 12
b <- 12L
c <- "12"
d <- TRUE

# Q 2.1
# Verificando class()
cat("Classe de a:", class(a), "\n")
cat("Classe de b:", class(b), "\n")
cat("Classe de c:", class(c), "\n")
cat("Classe de d:", class(d), "\n")

# Q 2.2
cat("Tipo de a:", typeof(a), "\n")
cat("Tipo de b:", typeof(b), "\n")
cat("Tipo de c:", typeof(c), "\n")
cat("Tipo de d:", typeof(d), "\n")

# Q 2.3

# Embora todos pareçam representar "12", 
# eles possuem significados e tipos de dados diferentes:
a <- 12 # número real (double)
b <- 12L # inteiro
c <- "12" # string

# Questão 3 ####

v1 <- c(1, 2, 3)
v2 <- c(1, TRUE, 3)
v3 <- c(1, "2", 3)

# O R tenta armazenar todos os elementos de um vetor em um único tipo.

# Questão 4 ####

lambda <- seq(450, 850, by = 100)
reflectancia <- c(0.05, 0.08, 0.12, 0.25, 0.43)

# Q 4.1
cat("Vetor lambda:", lambda, "\n")
cat("Vetor reflectancia:", reflectancia, "\n")

# Q 4.2
cat("Comprimento de lambda:", length(lambda), "\n")
cat("Comprimento de reflectancia:", length(reflectancia), "\n")

# Q 4.3
reflectancia_pct <- reflectancia * 100
cat("Reflectância (%):", reflectancia_pct, "\n")

# Q 4.4
reflectancia_terceiro <- reflectancia[3]
cat("Reflectância associada ao terceiro comprimento de onda:", reflectancia_terceiro, "\n")

# Questão 5 ####

# vetor r
r <- c(0.07, 0.11, 0.19, 0.53, 0.28)

# Q 5.1
q5_1 <- r > 0.15
cat("Valores maiores que 0.15:", q5_1, "\n")

# Q 5.2
q5_2 <- r >= 0.10 & r < 0.30
cat("Valores no intervalo [0.10, 0.30):", q5_2, "\n")

# Q 5.3
q5_3 <- r < 0.10 | r > 0.50
cat("Valores menores que 0.10 ou maiores que 0.50:", q5_3, "\n")

# Q 5.4
q5_4 <- !(r > 0.15)
cat("Valores não maiores que 0.15:", q5_4, "\n")

# Questão 6 ####
bandas <- c("azul", "verde", "vermelho", "nir")
r <- c(0.07, 0.11, 0.19, 0.53)

# Q 6.1
bandas_sel <- bandas[c(3, 4)]
cat("Bandas vermelha e NIR:", bandas_sel, "\n")
r_sel <- r[c(3, 4)]
cat("Bandas vermelha e NIR:", r_sel, "\n")
# Q 6.2
r_maiores <- r[r > 0.15]
cat("Reflectâncias maiores que 0.15:", r_maiores, "\n")
# Q 6.3
bandas_maiores <- bandas[r > 0.15]
cat("Nomes das bandas com reflectância > 0.15:", bandas_maiores, "\n")
# Q 6.4
r_sem_verde <- r[-2]
cat("Reflectâncias exceto a banda verde:", r_sem_verde, "\n")

# Questão 7 ####
sensor <- "Sentinel-2"
tile <- "22JFS"
data <- "2026-08-18"
# Q 7.1
nome_base <- paste(sensor, tile, data, sep = "_")
cat("Nome base criado com paste():", nome_base, "\n")
# Q 7.2
nome_final <- paste0(nome_base, ".csv")
cat("Nome final com extensão:", nome_final, "\n")
# Q 7.3
qtd_caracteres <- nchar(nome_final)
cat("Número de caracteres:", qtd_caracteres, "\n")

# Questão 8 ####
r <- c(0.12, 0.15, NA, 0.17, 0.19)
# Q 8.1
media_inicial <- mean(r)
cat("Média inicial:", media_inicial, "\n")
# Q 8.2]
media_sem_na <- mean(r, na.rm = TRUE)
cat("Média sem valores ausentes:", media_sem_na, "\n")
# Q 8.3
posicao_na <- is.na(r)
cat("Vetor de posições ausentes (is.na):", posicao_na, "\n")
# Q 8.4
r2 <- r
r2[is.na(r2)] <- mean(r2, na.rm = TRUE)
cat("Vetor r2 após imputação pela média:", r2, "\n")

# Questão 9 ####
amostra <- c("A", "B", "C", "D", "E")
red <- c(0.22, 0.18, 0.12, 0.28, NA)
nir <- c(0.31, 0.52, 0.61, 0.35, 0.48)
# Q 9.1
ndvi <- (nir - red) / (nir + red)
cat("Vetor NDVI:", ndvi, "\n")
# Q 9.2
ndvi_na <- is.na(ndvi)
cat("Posições com NDVI ausente:", ndvi_na, "\n")
# Q 9.3
condicao <- !is.na(ndvi) & ndvi > 0.4
cat("Condição (não NA e NDVI > 0.4):", condicao, "\n")
# Q 9.4
amostras_selecionadas <- amostra[condicao]
cat("Amostras que satisfazem a condição:", amostras_selecionadas, "\n")

# Questão 10 ####
# 1. Criar vetor amostra com seis identificadores de amostras
amostra <- c("S1", "S2", "S3", "S4", "S5", "S6")

# 2. Criar vetores red e nir com seis reflectâncias cada (incluindo 1 NA em red)
red <- c(0.12, 0.20, 0.15, NA, 0.08, 0.25)
nir <- c(0.45, 0.38, 0.50, 0.42, 0.60, 0.30)

# 3. Usar length(), class() e typeof() para inspecionar os objetos
cat("Tamanho do vetor amostra:", length(amostra), "\n")
cat("Classe de red:", class(red), "| Tipo interno:", typeof(red), "\n")
cat("Classe de nir:", class(nir), "| Tipo interno:", typeof(nir), "\n")

# 4. Calcular o NDVI (Índice de Vegetação por Diferença Normalizada)
ndvi <- (nir - red) / (nir + red)
cat("Valores de NDVI calculados:", ndvi, "\n")

# 5. Criar uma condição que selecione valores de NDVI > 0.4, excluindo ausentes
condicao_ndvi <- !is.na(ndvi) & ndvi > 0.4

# 6. Exibir os identificadores e os valores de NDVI selecionados
amostras_filtradas <- amostra[condicao_ndvi]
ndvi_filtrado <- ndvi[condicao_ndvi]

cat("Amostras selecionadas (NDVI > 0.4):", amostras_filtradas, "\n")
cat("Valores de NDVI selecionados:", ndvi_filtrado, "\n")

# 7. Criar, com paste(), um nome de arquivo .csv para exportação
nome_sensor <- "Sentinel2"
data_coleta <- "20260818"
nome_arquivo <- paste("resultados_ndvi", nome_sensor, data_coleta, sep = "_")
nome_arquivo_csv <- paste0(nome_arquivo, ".csv")

cat("Nome do arquivo para exportação:", nome_arquivo_csv, "\n")