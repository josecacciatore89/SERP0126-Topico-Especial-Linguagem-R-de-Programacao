# Questão 1####
r <- c(0.18, -0.04, 0.31, 1.08, NA, 0.52, 0.00, 0.97)

status <- character(length(r))
validos_count <- 0

for (i in 1:length(r)) {
  if (is.na(r[i])) {
    status[i] <- "sem dado"
  } else if (r[i] < 0) {
    status[i] <- "abaixo do intervalo"
  } else if (r[i] > 1) {
    status[i] <- "acima do intervalo"
  } else {
    status[i] <- "válida"
    validos_count <- validos_count + 1
  }
}

cat("Vetor original r:", r, "\n")
cat("Vetor status:", status, "\n")
cat("Observações válidas encontradas:", validos_count, "\n")

# Questão 2####

red <- c(0.12, 0.20, 0.00, 0.18, 0.31, 0.10)
nir <- c(0.62, 0.45, 0.00, 0.22, 0.27, 0.70)

ndvi <- rep(NA, length(red))

for (i in 1:length(red)) {
  denominador <- nir[i] + red[i]
  
  if (denominador == 0) {
    cat("Aviso: Denominador nulo no índice", i, "- repetição pulada.\n")
    next
  }
  
  ndvi[i] <- (nir[i] - red[i]) / denominador
}

cat("Vetor NDVI final:", ndvi, "\n")

# Questão 3####
dn <- c(1820, 2240, 3011, 3988, 4095, 4095, 3760, 3552)

indice_saturacao <- NA

for (i in 1:length(dn)) {
  if (dn[i] == 4095) {
    indice_saturacao <- i
    cat("Saturação atingida no índice:", i, "| Valor:", dn[i], "\n")
    break
  }
}

# Questão 4####

temp <- c(24.8, 25.1, NA, 26.4, 27.0, NA, 26.1, 25.7)

soma <- 0
qtd_validos <- 0

for (i in 1:length(temp)) {
  if (is.na(temp[i])) {
    next
  }
  soma <- soma + temp[i]
  qtd_validos <- qtd_validos + 1
}

media_manual <- soma / qtd_validos
media_oficial <- mean(temp, na.rm = TRUE)

cat("Média calculada com acumuladores:", media_manual, "\n")
cat("Média validada com mean(..., na.rm = TRUE):", media_oficial, "\n")

# Questão 5####

tau <- 0.20  # Estimativa inicial < 0.30
iteracoes <- 0
max_iteracoes <- 1000

while (abs(0.85 - tau) >= 0.001) {
  tau <- tau + 0.15 * (0.85 - tau)
  iteracoes <- iteracoes + 1
  
  if (iteracoes >= max_iteracoes) {
    cat("Aviso: Limite de iterações atingido!\n")
    break
  }
}

cat("Número de iterações necessárias:", iteracoes, "\n")
cat("Valor final de tau:", tau, "\n")

# Questão 6####

clear <- c(1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1)

cont_atual <- 0
max_sequencia <- 0

for (i in 1:length(clear)) {
  if (clear[i] == 1) {
    cont_atual <- cont_atual + 1
    if (cont_atual > max_sequencia) {
      max_sequencia <- cont_atual
    }
  } else {
    cont_atual <- 0
  }
}

cat("Maior sequência de observações livres de nuvens:", max_sequencia, "\n")

# Questão 7####

umidade <- c(0.42, 0.39, 0.31, 0.28, 0.26, 0.33, 0.29, 0.24, 0.22, 0.21)

cont_seco <- 0

for (i in 1:length(umidade)) {
  if (umidade[i] < 0.30) {
    cont_seco <- cont_seco + 1
  } else {
    cont_seco <- 0
  }
  
  if (cont_seco == 3) {
    idx_inicio <- i - 2
    idx_fim <- i
    cat("Primeira sequência de 3 secas consecutivas encontrada:\n")
    cat("Índice Inicial:", idx_inicio, "| Índice Final:", idx_fim, "\n")
    break
  }
}

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