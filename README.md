[readme_md.md](https://github.com/user-attachments/files/33887907/readme_md.md)
# SERP0126 - Tópico Especial: Linguagem R de Programação

Este repositório contém as soluções das listas de exercícios da disciplina **SERP0126 (Tópico Especial: Linguagem R de Programação)**.

## 📁 Estrutura do Repositório

O repositório está organizado de forma que cada lista de exercícios possua um script principal em R contendo todas as resoluções da respectiva lista. 

Além disso, para atender às solicitações específicas de criação de scripts individuais exigidas nas questões finais, os códigos das questões de destaque foram salvos em arquivos separados.

### 📜 Organização dos Arquivos

* **Lista 01: Fundamentos da linguagem R (objetos, tipos, vetores e lógica)**
  * `lista01.R` — Script dedicado exclusivamente ao projeto final da lista (**Questão 10**).

* **Lista 02: Funções matemáticas, estatísticas, entrada/saída e decisões**
  * `lista02_completa.R` — Resolução completa das questões da Lista 02
  * `Lista-02Q10.R` — Script dedicado exclusivamente ao projeto final da lista (**Questão 10**).

* **Lista 03: Controle de fluxo em R (problemas aplicados)**
  * `lista03_completa.R` — Resolução completa das questões da Lista 03.
  * `Lista-03Q08.R` — Script dedicado exclusivamente ao projeto final da lista (**Questão 8**).

* **Lista 04: Programação vetorizada em R (seleção, máscaras e classificação)**
  * `lista04_completa.R` — Resolução completa das questões da Lista 04.
  * `Lista-04Q08.R` — Script dedicado exclusivamente ao projeto final da lista (**Questão 8**).

---

## 🛠️ Conteúdo Coberto

1. **Fundamentos e Vetorização:** Tipos de dados, coerção, criação e manipulação de vetores, indexação lógica e relacional.
2. **Estatística e Funções Matemáticas:** Funções estatísticas descritivas (`mean`, `sd`, `quantile`, `summary`), tratamento de dados ausentes (`NA`) e trigonometria.
3. **Controle de Fluxo:** Estruturas condicionais (`if`, `else if`, `else`) e laços de repetição (`for`, `while`) com controle de fluxo via `next` e `break`.
4. **Processamento de Dados de Sensoriamento Remoto:** Cálculo de índices espectrais (NDVI), máscaras de qualidade (`QA`), conversão de números digitais para reflectância e classificação por limiares/intervalos (`cut`, `ifelse`).

---

## 🚀 Como Executar os Scripts Direta e Remotamente no R

Você pode carregar e executar qualquer um dos scripts diretamente na sua sessão do R (RStudio ou Posit Cloud) sem precisar baixar os arquivos localmente. Basta usar a função `source()` apontando para as URLs brutas (*Raw*) do GitHub:

### Executando as questões individuais destacadas:
### Executando as questões individuais:

```R
# Questão 10 - Lista 02
source(url("[https://raw.githubusercontent.com/josecacciatore89/SERP0126-Topico-Especial-Linguagem-R-de-Programacao/main/Lista-02Q10.R](https://raw.githubusercontent.com/josecacciatore89/SERP0126-Topico-Especial-Linguagem-R-de-Programacao/main/Lista-02Q10.R)"))

# Questão 08 - Lista 03
source(url("[https://raw.githubusercontent.com/josecacciatore89/SERP0126-Topico-Especial-Linguagem-R-de-Programacao/main/Lista-03Q08.R](https://raw.githubusercontent.com/josecacciatore89/SERP0126-Topico-Especial-Linguagem-R-de-Programacao/main/Lista-03Q08.R)"))

# Questão 08 - Lista 04
source(url("[https://raw.githubusercontent.com/josecacciatore89/SERP0126-Topico-Especial-Linguagem-R-de-Programacao/main/Lista-04Q08.R](https://raw.githubusercontent.com/josecacciatore89/SERP0126-Topico-Especial-Linguagem-R-de-Programacao/main/Lista-04Q08.R)"))

# Lista 01 Completa
source(url("[https://raw.githubusercontent.com/josecacciatore89/SERP0126-Topico-Especial-Linguagem-R-de-Programacao/main/Lista-01.R](https://raw.githubusercontent.com/josecacciatore89/SERP0126-Topico-Especial-Linguagem-R-de-Programacao/main/Lista-01.R)"))

# Lista 02 Completa
source(url("[https://raw.githubusercontent.com/josecacciatore89/SERP0126-Topico-Especial-Linguagem-R-de-Programacao/main/Lista-02_completa.R](https://raw.githubusercontent.com/josecacciatore89/SERP0126-Topico-Especial-Linguagem-R-de-Programacao/main/Lista-02_completa.R)"))

# Lista 03 Completa
source(url("[https://raw.githubusercontent.com/josecacciatore89/SERP0126-Topico-Especial-Linguagem-R-de-Programacao/main/Lista-03_completa.R](https://raw.githubusercontent.com/josecacciatore89/SERP0126-Topico-Especial-Linguagem-R-de-Programacao/main/Lista-03_completa.R)"))

# Lista 04 Completa
source(url("[https://raw.githubusercontent.com/josecacciatore89/SERP0126-Topico-Especial-Linguagem-R-de-Programacao/main/Lista-04_completa.R](https://raw.githubusercontent.com/josecacciatore89/SERP0126-Topico-Especial-Linguagem-R-de-Programacao/main/Lista-04_completa.R)"))
