###############################################################################
#                                                                             #        
# CURSO:  Forma��o Cientista de Dados        PLATAFORMA: Data Science Academy #
# M�DULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## Fatores / Factors
vec1 <- c("Macho", "Femea", "Femea","Macho", "Macho")
vec1
fac_vec1 <- factor(vec1)
fac_vec1
class(vec1)
class(fac_vec1)


# Vari�veis categ�ricas nominais / Nominal categorical variables
# N�o existe uma ordem impl�cita / There is no implied order
animais <- c("Zebra", "Pantera", "Rinoceronte", "Macaco", "Tigre")
animais
class(animais)
fac_animais <- factor(animais)
fac_animais
class(fac_animais)
levels(fac_animais)


# Vari�veis categ�ricas ordinais / Ordinal categorial variables
# Possuem uma ordem natural / They have a natural order
grad <- c("Mestrado", "Doutorado", "Bacharelado", "Mestrado", "Mestrado")
grad
fac_grad <- factor(grad, order = TRUE,
            levels = c("Doutorado", "Mestrado", "Bacharelado"))
fac_grad
levels(fac_grad)


# Sumarizar os dados fornece uma vis�o geral sobre o conte�do
# Summarize the data provides an overview of content
summary(fac_grad)
summary(grad)

vec2 <- c("M", "F", "F", "M", "M", "M", "F", "F", "M", "M", "M", "F", "F",
          "M", "M")
vec2
fac_vec2 <- factor(vec2)
fac_vec2
levels(fac_vec2) <- c("Femea", "Macho")
fac_vec2
summary(fac_vec2)
summary(vec2)


# Mais exemplos / More examples
data <- c(1,2,2,3,1,2,3,3,1,2,3,3,1)
fdata <- factor(data)
fdata

rdata <- factor(data, labels = c("I", "II", "III"))
rdata

# Fatores N�o-Ordenados / unordered factors
set1 <- c("AA", "B", "BA", "CC", "CA", "AA", "BA", "CC", "CC")
set1

# Transformando os dados. O R apenas criou os n�veis
# Transforming the data. The R created only tle levels
f.set1 <- factor(set1)
f.set1
class(f.set1)
is.ordered(f.set1)


# Fatores ordenados / Order factors
o.set1 <- factor(set1, levels = c("CA", "BA", "AA", "CC", "B"), ordered = TRUE)

o.set1
is.ordered(o.set1)

as.numeric(o.set1)
table(o.set1)


# Fatores e dataframes / Factors and dataframes
df <- read.csv2("etnias.csv", sep = ',')
df

# Vari�veis do tipo fator / Variables of type factor
str(df)

# N�veis dos fatores / Factors's levels
# Internamente o R armazena valores inteiros e faz um mapeamento
# e agrupa as estat�sticas por n�veis. Agora, se fizermos
# a contabiliza��o para cada categoria.

levels(df$Etnia)
summary(df$Etnia)

# Plot
# Agora se fizermos um plot, temos um boxplot para estas vari�veis
# Now if we make a plot, we have a boxplot for these variables
plot(df$Idade~df$Etnia, xlab = "Etnia", ylab = "Idade",
    main = "Idade por etnia")

# Regress�o / Regression
summary(lm(Idade~Etnia, data = df))

# Convertendo uma coluna em vari�vel categ�rica.
# Converting a column in categorical variable
df
str(df)
df$Estado_Civil.cat <- factor(df$Estado_Civil, 
                       labels = c("Solteiro", "Casado", "Divorciado"))
df
str(df)






























