# Questão 1####
dn <- c(820, 1250, 2010, 2750, 3100, 3550, 3890, 4095)

# Conversão vetorizada
reflectancia <- dn * 0.00025 - 0.05

# Substituição vetorizada de valores negativos por zero
reflectancia[reflectancia < 0] <- 0

# Resultados
cat("Reflectância mínima:", min(reflectancia), "\n")
cat("Reflectância máxima:", max(reflectancia), "\n")
cat("Reflectância média:", mean(reflectancia), "\n")
# Questão 2####
red <- c(0.12, 0.18, NA, 0.24, -0.02, 0.31, 0.15, 0.20)
nir <- c(0.62, 0.51, 0.44, NA, 0.30, 1.08, 0.58, 0.40)

# Máscara lógica combinada
mascara_valida <- !is.na(red) & !is.na(nir) & 
  red >= 0 & red <= 1 & 
  nir >= 0 & nir <= 1

# Extração dos pares válidos
red_validos <- red[mascara_valida]
nir_validos <- nir[mascara_valida]
qtd_pares <- sum(mascara_valida)

cat("Pares válidos mantidos (RED):", red_validos, "\n")
cat("Pares válidos mantidos (NIR):", nir_validos, "\n")
cat("Quantidade de pares mantidos:", qtd_pares, "\n")
]

# Questão 3####

qa <- c("clear", "cloud", "clear", "shadow", "snow", 
        "clear", "cloud", "clear", "clear", "shadow")
ndvi <- c(0.62, 0.10, 0.55, 0.21, 0.04, 
          0.73, 0.18, 0.48, 0.66, 0.15)

# Máscara de contaminação com o operador %in%
mascara_contaminada <- qa %in% c("cloud", "shadow", "snow")

# Extrações e contagem
ndvi_contaminados <- ndvi[mascara_contaminada]
ndvi_validos <- ndvi[!mascara_contaminada]
qtd_rejeitados <- sum(mascara_contaminada)

cat("NDVIs das observações contaminadas:", ndvi_contaminados, "\n")
cat("NDVIs das observações válidas:", ndvi_validos, "\n")
cat("Quantidade de observações rejeitadas:", qtd_rejeitados, "\n")

# Questão 4####

r <- c(0.14, 0.22, 0.37, 1.03, 0.41, -0.01, 0.56, 0.48)

# 1. Índices fora do intervalo [0, 1]
indices_fora <- which(r < 0 | r > 1)
cat("Índices com valores fora de [0, 1]:", indices_fora, "\n")

# 2. Verificar se existe pelo menos uma observação inválida
existe_invalida <- any(r < 0 | r > 1)
cat("Existe pelo menos um valor inválido?:", existe_invalida, "\n")

# 3. Verificar se todas as observações são <= 1
todas_menor_igual_1 <- all(r <= 1)
cat("Todas as observações são <= 1?:", todas_menor_igual_1, "\n")

# 4. Substituir valores fora do intervalo por NA
r[r < 0 | r > 1] <- NA
cat("Vetor r após substituição por NA:", r, "\n")

# Questão 5####

temp <- c(28.4, 31.2, 35.8, NA, 40.1, 33.7, 37.5, 29.9)

# Aninhamento vetorizado de ifelse()
rotulos <- ifelse(is.na(temp), "sem dado",
                  ifelse(temp >= 35, "quente", "normal"))

cat("Vetor de rótulos de temperatura:", rotulos, "\n")

# Questão 6####

ndvi <- c(-0.12, 0.02, 0.18, 0.29, 0.31, 0.47, 
          0.59, 0.60, 0.68, 0.74, 0.83, 0.91)

# Categorização com cut() e intervalos fechados à esquerda [a, b)
classes_ndvi <- cut(ndvi, 
                    breaks = c(-Inf, 0, 0.3, 0.6, Inf), 
                    labels = c("negativo", "baixo", "moderado", "alto"), 
                    right = FALSE)

cat("Vetor de classes de NDVI:\n")
print(classes_ndvi)

cat("\nTabela de frequência das classes:\n")
print(table(classes_ndvi))

# Questão 7####

medida <- c(0.31, 0.34, 0.29, 0.36, 0.33, 0.38)
correcao <- c(-0.01, 0.02)

# Aplicação por reciclagem
corrigida <- medida + correcao

# Verificação do padrão
diferenca <- corrigida - medida

cat("Valores das medidas corrigidas:", corrigida, "\n")
cat("Diferença (corrigida - medida):", diferenca, "\n")

# Questão 8####

# Entradas de dados
red <- c(0.12, 0.18, 0.24, 0.08, 0.31, 0.15, 0.20, 0.10, 0.27, 0.16)
nir <- c(0.62, 0.51, 0.35, 0.09, 0.28, 0.58, 0.40, 0.72, 0.33, 0.48)
qa  <- c("clear", "clear", "cloud", "clear", "shadow", 
         "clear", "clear", "clear", "cloud", "clear")

# 1. Máscara que aceita apenas pixels "clear"
mascara_clear <- qa == "clear"

# 2. Calcular NDVI apenas para os pixels aceitos, mantendo NA nas demais posições
ndvi <- ifelse(mascara_clear, (nir - red) / (nir + red), NA)
cat("Vetor NDVI obtido (preservando NA):\n", round(ndvi, 4), "\n\n")

# Extração apenas dos NDVIs válidos para testes
ndvi_validos <- ndvi[!is.na(ndvi)]

# 3. Verificar com any() se existe algum NDVI válido negativo
existe_negativo <- any(ndvi_validos < 0)
cat("Existe NDVI válido negativo?:", existe_negativo, "\n")

# 4. Verificar com all() se todos os NDVIs válidos estão no intervalo [-1, 1]
todos_no_intervalo <- all(ndvi_validos >= -1 & ndvi_validos <= 1)
cat("Todos os NDVIs válidos estão no intervalo [-1, 1]?:", todos_no_intervalo, "\n\n")

# 5. Classificação binária ("alto"/"baixo") com ifelse() e limiar 0.5 (preservando NA)
classe_binaria <- ifelse(is.na(ndvi), NA,
                         ifelse(ndvi >= 0.5, "alto", "baixo"))
cat("Classificação binária (alto/baixo):\n")
print(classe_binaria)

# 6. Criar quatro classes com cut() usando os limites 0, 0.3 e 0.6
classes_cut <- cut(ndvi, 
                   breaks = c(-Inf, 0, 0.3, 0.6, Inf), 
                   labels = c("negativo", "baixo", "moderado", "alto"), 
                   right = FALSE)

# 7. Contar as frequências das quatro classes com table()
cat("\nFrequência das classes (cut):\n")
print(table(classes_cut, useNA = "ifany"))
