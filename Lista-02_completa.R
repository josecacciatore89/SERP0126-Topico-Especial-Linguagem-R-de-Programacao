# Questão 1####
x <- c(-4, -1, 0, 1, 4, 9, 16)
# Q 1.1
# Valor absoluto é obtido pela função abs()
abs_x <- abs(x)
cat("Valor absoluto de x:", abs_x, "\n")
# Q 1.2
# Raiz quadrada apenas dos elementos não-negativos é calculada pela função sqrt
sqrt_x <- sqrt(x[x >= 0])
cat("Raiz quadrada (não-negativos):", sqrt_x, "\n")
# Q 1.3
# Quadrado de todos os elementos
quad_x <- x^2
cat("Quadrado de x:", quad_x, "\n")
# Q 1.4
# Valor de e^x para os elementos 0 e 1
exp_x <- exp(x[x %in% c(0, 1)])
cat("e^x para x em {0, 1}:", exp_x, "\n")
# Questão 2####
p <- c(1, 10, 100, 1000, 10000) # dados da questão
# Q 2.1
log_nat <- log(p)
log_dec <- log10(p)
log_b2  <- log2(p)

cat("Logaritmo natural:", log_nat, "\n")
cat("Logaritmo decimal (base 10):", log_dec, "\n")
cat("Logaritmo na base 2:", log_b2, "\n")
# Q 2.2
log_nat_round <- round(log_nat, digits = 2)
cat("Log natural arredondado (2 casas):", log_nat_round, "\n")
# Q 2.3
log_nat_signif <- signif(log_nat, digits = 3)
cat("Log natural (3 algarismos significativos):", log_nat_signif, "\n")
# Q 2.4
teste_log <- log10(1000) == 3
cat("log10(1000) é igual a 3?:", teste_log, "\n")
# Questão 3####
angulos_deg <- c(0, 30, 45, 60, 90, 180)
# Q 3.1
angulos_rad <- (angulos_deg * (pi / 180))
cat("Ângulos em radianos:", angulos_rad, "\n")
# Q 3.2
seno <- sin(angulos_rad)
cosseno <- cos(angulos_rad)
cat("Seno:", seno, "\n")
cat("Cosseno:", cosseno, "\n")
# Q 3.3
seno_round <- round(seno, 4)
cosseno_round <- round(cosseno, 4)
cat("Seno arredondado (4 casas):", seno_round, "\n")
cat("Cosseno arredondado (4 casas):", cosseno_round, "\n")
# Q 3.4
angulos_seno_gt_07 <- angulos_deg[seno > 0.7]
cat("Ângulos (em graus) com seno > 0.7:", angulos_seno_gt_07, "\n")

# Questão 4####
refl <- c(0.31, 0.29, 0.35, 0.33, 0.30, 0.34, 0.28)
cat("Comprimento (length):", length(refl), "\n")
cat("Soma (sum):", sum(refl), "\n")
cat("Média (mean):", mean(refl), "\n")
cat("Mediana (median):", median(refl), "\n")
cat("Mínimo (min):", min(refl), "\n")
cat("Máximo (max):", max(refl), "\n")
cat("Amplitude (range):", range(refl), "\n")
cat("Variância (var):", var(refl), "\n")
cat("Desvio-padrão (sd):", sd(refl), "\n")
cat("Quantis (quantile):", quantile(refl), "\n")
cat("Intervalo Interquartil (IQR):", IQR(refl), "\n")

cat("\n--- Resumo Genérico (summary) ---\n")
print(summary(refl))
# A função do R base utilizada para calcular o desvio-padrão é a sd() (standard deviation). 
# Todas as funções aplicadas são estatísticas resumidas integradas no R base.
# Questão 5 ####
refl <- c(0.21, 0.24, NA, 0.27, 0.23, NA, 0.25)
# Q 5.1
#Executar mean(refl)
m_inicial <- mean(refl)
cat("Média inicial com NA:", m_inicial, "\n")
# Q 5.2
#Calcular estatísticas ignorando NA
cat("Média (sem NA):", mean(refl, na.rm = TRUE), "\n")
cat("Desvio-padrão (sem NA):", sd(refl, na.rm = TRUE), "\n")
cat("Mínimo (sem NA):", min(refl, na.rm = TRUE), "\n")
cat("Máximo (sem NA):", max(refl, na.rm = TRUE), "\n")
# Q 5.3
#Contar quantos valores NA existem
qtd_na <- sum(is.na(refl))
cat("Quantidade de valores NA:", qtd_na, "\n")
# Q 5.4
#Criar um novo vetor contendo apenas valores válidos
refl_validos <- refl[!is.na(refl)]
cat("Vetor apenas com valores válidos:", refl_validos, "\n")
# Questão 6 ####
red <- c(0.20, 0.18, 0.25, 0.30, 0.22, 0.27)
nir <- c(0.48, 0.55, 0.42, 0.36, 0.51, 0.40)
# Q 6.1
# Média e desvio-padrão
cat("Média Red:", mean(red), "| Desvio-padrão Red:", sd(red), "\n")
cat("Média NIR:", mean(nir), "| Desvio-padrão NIR:", sd(nir), "\n")
# Q 6.2
# Covariância
covariancia <- cov(red, nir)
cat("Covariância:", covariancia, "\n")
# Q 6.3
#Correlação de Pearson
correlacao <- cor(red, nir)
cat("Correlação de Pearson:", correlacao, "\n")
# Q 6.4
# está no PDF

# Questão 7 ####
# Q 7.1
#Ler nome e valor numérico
nome <- readline(prompt = "Digite seu nome: ")
# Q 7.2
#Ler o valor numérico
entrada_val <- readline(prompt = "Digite um valor numérico: ")
# Q 7.3
#Converter para numérico
valor <- as.numeric(entrada_val)
# Q 7.4
#Calcular raiz quadrada
raiz <- sqrt(valor)
# Q 7.5
#Exibir os resultados
print(paste("Usuário:", nome, "- Raiz quadrada:", raiz))
cat("Usuário:", nome, "- Raiz quadrada de", valor, "é igual a", raiz, "\n")

# Questão 8 ####
temp_input <- readline(prompt = "Digite a temperatura em °C: ")
temp <- as.numeric(temp_input)

if (temp > 0) {
  print("Temperatura positiva")
} else {
  print("Temperatura zero ou negativa")
}

# Questão 9 ####

red_in <- readline(prompt = "Digite a reflectância da banda Vermelho (RED): ")
nir_in <- readline(prompt = "Digite a reflectância da banda NIR: ")

red <- as.numeric(red_in)
nir <- as.numeric(nir_in)

ndvi <- (nir - red) / (nir + red)
cat("O valor do NDVI calculado é:", round(ndvi, 4), "\n")

if (ndvi > 0.4) {
  cat("Avaliação: O NDVI é maior que o limiar didático de 0.4.\n")
} else {
  cat("Avaliação: O NDVI não é maior que o limiar didático de 0.4.\n")
}

# Questão 10 ####

# Q 10.1
#vetor com oito valores de reflectância, incluindo exatamente um NA
refl_b1 <- c(0.12, 0.18, 0.22, NA, 0.15, 0.28, 0.30, 0.25)
# Q 10.2
#estatísticas descritivas ignorando o valor ausente
m_media   <- mean(refl_b1, na.rm = TRUE)
m_mediana <- median(refl_b1, na.rm = TRUE)
m_sd      <- sd(refl_b1, na.rm = TRUE)
m_min     <- min(refl_b1, na.rm = TRUE)
m_max     <- max(refl_b1, na.rm = TRUE)

cat("--- Estatísticas da Banda 1 (sem NA) ---\n")
cat("Média:", m_media, "| Mediana:", m_mediana, "| Desvio-padrão:", m_sd, "\n")
cat("Mínimo:", m_min, "| Máximo:", m_max, "\n\n")

# Q 10.3
#Contar quantos valores ausentes existem
qtd_na <- sum(is.na(refl_b1))
cat("Total de valores NA na Banda 1:", qtd_na, "\n\n")
# Q 10.4
#segundo vetor (mesmo comprimento) sem valores ausentes
refl_b2 <- c(0.35, 0.40, 0.48, 0.52, 0.38, 0.60, 0.62, 0.55)
# Q 10.5
#Selecionar apenas as posições em que ambas as bandas possuem valores válidos
mascara_validos <- !is.na(refl_b1) & !is.na(refl_b2)
b1_valida <- refl_b1[mascara_validos]
b2_valida <- refl_b2[mascara_validos]
# Q 10.6
#correlação entre as bandas válidas
correlacao_bandas <- cor(b1_valida, b2_valida)
cat("Correlação de Pearson entre as bandas válidas:", correlacao_bandas, "\n\n")
# Q 10.7
#vetor de ângulos, converter para radianos e calcular seno/cosseno
angulos_deg <- c(0, 30, 45, 60, 90)
angulos_rad <- angulos_deg * (pi / 180)
v_seno    <- sin(angulos_rad)
v_cosseno <- cos(angulos_rad)
# Q 10.8
#Exibir os resultados trigonométricos
cat("--- Resultados Trigonométricos ---\n")
cat("Ângulos (deg):", angulos_deg, "\n")
cat("Seno:       ", round(v_seno, 4), "\n")
cat("Cosseno:    ", round(v_cosseno, 4), "\n")
