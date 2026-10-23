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