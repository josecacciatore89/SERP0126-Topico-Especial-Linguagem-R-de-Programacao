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