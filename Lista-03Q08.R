# Questão 8####

# Entrada de dados
red <- c(0.12, 0.18, 0.24, 0.08, 0.31, 0.15, 0.00, 0.10)
nir <- c(0.62, 0.51, 0.35, 0.09, 0.28, 0.58, 0.00, 0.72)
qa  <- c(0,    0,    1,    0,    2,    0,    0,    0)

n <- length(red)

# 1. Pré-alocação dos vetores resultado
ndvi <- rep(NA_real_, n)
classe <- rep(NA_character_, n)

# Inicialização de contadores por classe
qtd_baixo <- 0
qtd_moderado <- 0
qtd_alto <- 0

# 2. Percorrer os pixels com laço for
for (i in 1:n) {
  
  # 3. Ignorar pixels com QA diferente de 0 (nuvem/sombra)
  if (qa[i] != 0) {
    next
  }
  
  # 4. Ignorar posições com denominador nulo
  denominador <- nir[i] + red[i]
  if (denominador == 0) {
    next
  }
  
  # 5. Calcular NDVI para os pixels válidos
  valor_ndvi <- (nir[i] - red[i]) / denominador
  ndvi[i] <- valor_ndvi
  
  # 6. Classificar NDVI com estruturas condicionais tradicionais
  if (valor_ndvi < 0.3) {
    classe[i] <- "baixo"
    qtd_baixo <- qtd_baixo + 1
  } else if (valor_ndvi < 0.6) {
    classe[i] <- "moderado"
    qtd_moderado <- qtd_moderado + 1
  } else {
    classe[i] <- "alto"
    qtd_alto <- qtd_alto + 1
  }
  
  # 8. Imprimir resultados do pixel processado
  cat("Pixel", i, "| NDVI:", round(ndvi[i], 4), "| Classe:", classe[i], "\n")
}

# 7. Exibir contagem por classe
cat("\n--- Resumo de Processamento por Classe ---\n")
cat("Pixels Válidos - Baixo:", qtd_baixo, "\n")
cat("Pixels Válidos - Moderado:", qtd_moderado, "\n")
cat("Pixels Válidos - Alto:", qtd_alto, "\n")