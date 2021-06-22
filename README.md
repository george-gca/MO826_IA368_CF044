# Desmatamento e Doenças Emergentes: Novas Perspectivas dos Impactos Causados pela Exploração Ambiental em Zoonoses Emergentes
# Deforestation and Emerging Diseases: New Perspectives on the Impacts Caused by Environmental Exploitation in Emerging Zoonoses

# Apresentação

O presente projeto foi originado no contexto das atividades da disciplina de pós-graduação [*Ciência e Visualização de Dados em Saúde*](https://github.com/datasci4health/home), oferecida no primeiro semestre de 2021, na Unicamp.

# Equipe
| Nome                         | RA     | Especialização |
|------------------------------|--------|----------------|
| Beatriz Cunha Freire         | 261067 | Computação |
| Bruna Moraes Lopes           | 216050 | Engenharia |
| George Corrêa de Araújo      | 191075 | Computação |
| Luidy Kazuo Issayama         | 136703 | Saúde |
| Stephanie Villa-Nova Pereira | 154410 | Saúde |

# Descrição Resumida do Projeto
A dengue é uma doença infecciosa transmitida principalmente pelo mosquito *Aedes aegypti* e causada por membros da família Flaviviridae, com quatro sorotipos diferentes: DENV-1, DENV-2, DENV-3 e DENV-4. Somente no Brasil, em 2019, foram registrados 1.544.987 casos de dengue, o que mostra que ainda é um fator de risco muito grande para a população [[1]](https://www.gov.br/pt-br/noticias/saude-e-vigilancia-sanitaria/2020/02/populacao-deve-ficar-atenta-a-proliferacao-do-aedes-aegypti-durante-periodo-chuvosa). Diferente de outras doenças tropicais negligenciadas, ela tem ganhado atenção mundial, devido a uma alta incidência - afetando 125 países e causando aproximadamente 100 milhões de casos sintomáticos por ano [[2]](https://www.nature.com/articles/nature12060) -, bem como um aumento na migração e adaptação dos vetores a climas temperados como Europa e América do Norte [[3]](https://journals.plos.org/plosntds/article?id=10.1371/journal.pntd.0007213). Além do clima ser um fator contribuinte para a migração e adaptação destes insetos, o desmatamento também é um fator de risco que promove a exposição de novos vírus e novas variantes de vírus aos seres humanos, já que a Amazônia é um dos maiores repositórios de arbovírus do mundo[[4]](https://pesquisa.bvsalud.org/portal/resource/pt/lil-188336).

O desmatamento é uma prática que consiste na retirada parcial ou total da cobertura vegetal de uma região. Na região amazônica, tem aumentado sucessivamente nos últimos 5 anos, alcançando as maiores taxas de desmatamento da década em 2020 [[5]](https://www.nature.com/articles/s41559-020-01368-x). De maneira complementar, de acordo com um relatório publicado pela Sociedade Vegetariana Brasileira, cerca de 70% da área desmatada na área da Amazônia é designada para a criação de gado  [[6]](https://www.cifor.org/publications/pdf_files/media/Amazon.pdf) [[7]](https://iopscience.iop.org/article/10.1088/1748-9326/5/2/024002/pdf).

Dado isso, estudar fatores influentes para o aumento de casos de dengue, nos auxilia a elaborar modelos estatítsticos mais precisos e mais preditivos de quando os surtos podem surgir, já que atualmente, os modelos existentes levam em consideração principalmete dados de temperatura e dados de saúde de baixa qualidade [[8]](https://pubmed.ncbi.nlm.nih.gov/25730702/). Portanto, o objetivo principal deste trabalho é compreender o impacto do desmatamento no aumento de número de casos de internação por dengue na região da Amazônia Legal, já que apresenta os maiores índices de desmatamento do Brasil. 

[Vídeo de apresentação](https://youtu.be/YkhxoM7QYJ0)

# Perguntas de Pesquisa
- O desmatamento contribui para o aumento de casos de dengue na região da Amazônia legal?
  - Existem outros fatores que podem contribuir para o aumento de casos de internações?
  - Existe diferença no número de casos de internações em estados com maiores e menores índices de desmatamento?

# Bases de Dados
Para informações sobre o desmatamento podemos utilizar a base de dados criada pelo Instituto Nacional de Pesquisas Espaciais (INPE) e disponibilizada através do portal TerraBrasilis. Quanto a informações sobre doenças podemos utilizar informações públicas fornecidas pelo DATASUS.

# Metodologia
Para a realização deste trabalho os seguintes passos serão necessários:
- análise dos dados, interpretação e seleção de subconjuntos de interesse;
- limpeza e normalização dos dados;
- análise de métodos de data mining aplicáveis ao problema;
- realização de data mining;
- avaliação e visualização dos resultados;
- publicação dos resultados obtidos.

O ciclo de análise dos dados à avaliação dos resultados poderá ser repetido diversas vezes, até o momento em que o conhecimento necessário para a resposta das perguntas de pesquisa seja obtido.

## Bases de Dados e Evolução

### Bases Estudadas e Não Adotadas

| Base de Dados | Endereço na Web | Resumo |
| -- | -- | -- |
| Doenças e Agravos de Notificação | [DATASUS](http://www2.datasus.gov.br/DATASUS/index.php?area=0203&id=34523091&VObj=http://tabnet.datasus.gov.br/cgi/deftohtm.exe?sinannet/cnv/dengueb) | Para o número de notificações, são incluídas notificações de indivíduos residentes no Brasil, independente de sua confirmação, exceto os descartados, pois em situações de epidemia nem sempre é possível confirmar todos os casos. |

#### Obtenção das Bases

#### Análise das Bases

As informações de doenças e agravos de notificação possuem informações sobre várias doenças, porém para este trabalho focamos nas informações sobre a dengue. Mais especificamente, selecionamos os dados de notificação do primeiro sintoma de dengue, agupados por mês/ano. Toda a análise feita nesses dados pode ser visualizada em um [notebook](notebooks/Pré_Processamento_Dados_de_Doenças.ipynb) ou [colab](https://colab.research.google.com/drive/1rdaYe6WFL_gSABGVkmvFvD-s-gs1THQK?usp=sharing).

Durante o carregamento dos dados, várias etapas de limpeza e adequação foram necessárias. Primeiramente foram removidas a linha e coluna que contém a soma (`Total`) e a coluna `Ign/Em Branco`, quando presente. Em seguida, criamos a coluna `Estado` com a respectiva informação e dividimos a coluna referente ao município em duas colunas: `Municipio` e `CodIbge`. Posteriormente, substituímos os valores `-` por `0`, visto que seus valores eram computados como 0 na linha e coluna `Total`.

Analisando individualmente os anos para o mesmo estado, percebemos variação na quantidade de municípios, o que indica que nem todos os municípios possuem informações de todos os anos. Para adicionar esses dados na tabela como dados faltantes (`NaN`), criamos uma lista composta por todos os municípios daquele estado que possuem informação em algum dos anos. A partir dessa lista adicionamos o nome daquele município em todos os anos, preenchendo os valores com `NaN` quando não anteriormente presente, de modo que a informação daquele estado para todos os anos possuam a mesma quantidade de municípios.

Como os dados de desmatamento possuem granularidade anual, aglutinamos as informações por ano, de modo a gerar uma tabela por estado, com informações anuais de cada município daquele estado. Num passo final, agregamos todas as tabelas em uma única, contendo todos os municípios de todos os estados, com informações anuais de notificação do primeiro sintoma de dengue.

Durante uma análise exploratória inicial, percebemos a grande quantidade de dados faltantes, chegando a ser, em algumas colunas, mais de 30% dos valores. De 810 municípios contidos nos dados, 272 deles (33.6%) não possuem informação sobre notificações para o ano de 2018, por exemplo. Uma análise visual dos valores faltantes pode ser observado nas figuras abaixo.

![Completude dos Dados de Sintomas por Coluna](assets/dados_sintomas_completude_colunas.png)

![Matriz de Nulidade dos Dados de Sintomas](assets/dados_sintomas_matriz_nulidade.png)

Para verificar o real impacto dos dados faltantes, optamos por comparar a quantidade de municípios total e a quantidade de municípios com todas as informações completas, agrupados por estado. Através da tabela abaixo, podemos verificar que a maior parte dos municípios possui alguma informação faltante. De 810 municípios, somente 297 possuem informações para todo o período de 2008 a 2019. Há estados que possuem uma quantidade muito pequena de dados completos, como o Amapá e o Amazonas, e estados que inclusive não possuem informação total de nenhuma cidade, como é o caso de Roraima. Devido à quantidade reduzida de dados completos, optamos por descartar esta base de dados.

| Estado   |   Total de Municípios |   Municípios Completos |
|----------|-----------------------|------------------------|
| AC       |                    22 |                     10 |
| AP       |                    17 |                      4 |
| AM       |                    62 |                      8 |
| MA       |                   217 |                     39 |
| MT       |                   142 |                     84 |
| PA       |                   142 |                     71 |
| RO       |                    53 |                     28 |
| RR       |                    15 |                      0 |
| TO       |                   140 |                     53 |
| Total    |                   810 |                    297 |


### Bases Estudadas e Adotadas

| Base de Dados | Endereço na Web | Resumo |
| -- | -- | -- |
| Desmatamento nos Municípios da Amazônia Legal | [PRODES Amazônia](http://www.dpi.inpe.br/prodesdigital/prodesmunicipal.php) | A estimativa de extensão desmatada por município baseia-se no cálculo do desmatamento acumulado e observado até 2019 dentro dos limites administrativos  dos municípios que fazem parte da Amazônia Legal. Além da classe com a extensão desflorestada, as áreas de outras classes de cobertura da terra  e nuvem, foram calculadas  para cada ano de análise como: floresta, nuvem, não floresta, hidrografia e área não observada. |
| Morbidade Hospitalar do SUS | [DATASUS](http://www2.datasus.gov.br/DATASUS/index.php?area=0203&id=6927&VObj=http://tabnet.datasus.gov.br/cgi/deftohtm.exe?sih/cnv/nr) | O número de internações por dengue representa todos os casos registrados e confirmados no período, separados por mês, ano de notificação e município que registrou o caso. |

#### Obtenção das Bases

Os dados de desmatamento foram obtidos a partir da seleção dos dados no sistema da PRODES. Para tal, é necessário selecionar na opção `Estado/Região` a Amazônia Legal, alterando o ano entre 2008 a 2019. Após esse passo, geramos a lista, e ao fim da mesma há a opção `Gera arquivo .txt`.

O número de internações foi obtido a partir da filtragem dos dados epidemiológicos e morbidade do TABNET. Após a seleção `geral, por local de residência - a partir de 2008` por estado, foram separados os filtros com todos os períodos disponíveis: Linha - municípios; Coluna - Ano/mês de atendimento; Conteúdo - internações. Por fim, nas seleções, foi selecionado `Dengue` na `Lista Morb CID-10`, para filtrar apenas os casos de Dengue.

O número de notificações foi obtido a partir da filtragem dos dados epidemiológicos e morbidade do TABNET (Doenças e Agravos de Notificação - 2007 em diante (SINAN). Após a seleção ´Dengue até 2013´ ou ´Dengue de 2014 em diante´ por estado, foram separados os filtros com todos os períodos disponíveis: Linha - município de residência; Coluna - mês o primeiro sintoma; Conteúdo - Casos prováveis.

#### Análise das Bases



# Ferramentas
Para analisar e interpretar inicialmente os dados, poderemos utilizar a ferramenta [Data Studio](https://datastudio.google.com/) ou a linguagem [Python](https://www.python.org/) com o auxílio da biblioteca [Pandas](https://pandas.pydata.org/). Para limpeza e normalização dos dados, faremos isso programaticamente por meio das mesmas ferramentas. Para implementação dos métodos de data mining será utilizado a linguagem de programação [Python](https://www.python.org/) e bibliotecas como [Pandas](https://pandas.pydata.org/) e [SKLearn](https://scikit-learn.org/). Para a avaliação e visualização dos resultados poderão ser utilizadas soluções tanto programáticas, por meio de bibliotecas Python como [Matplotlib](https://matplotlib.org/), [Seaborn](https://seaborn.pydata.org/), [Altair](https://altair-viz.github.io/) ou [Plotly](https://plotly.com/python/), quanto plataformas mais amigáveis, como o [PowerBI](https://powerbi.microsoft.com/pt-br/) ou o [Tableau](https://www.tableau.com/pt-br).
# Análises Realizadas
## Regressão Linear Múltipla
A partir da ferramenta Orange utilizamos a regressão linear múltipla para observar se algumas variáveis dentro do banco de dados influenciam de algum modo a taxa de internações de dengue ao longo dos anos. Para tal análise, foram escolhidas como variáveis independentes (variáveis de entrada) a população total que mora em domicílios sem acesso ao serviço de coleta de esgoto, incremento de desmatamento entre o ano atual e o anterior, extensão da rede de distribuição de esgoto, população total que mora em domicílios sem acesso ao serviço de coleta de esgoto, densidade demográfica e área de hidrografia. Para a variável dependente (variável de saída) escolhemos o número de internações por dengue nos anos de 2008 até 2019. O fluxograma para a análise está representado a seguir.
![image](https://user-images.githubusercontent.com/81474711/122691678-95841f00-d207-11eb-8255-22b45adde6df.png)

Inicialmente, verificamos as correlações entre os atributos que estão representados na figura a seguir
##### Correlação das Variáveis
![image](https://user-images.githubusercontent.com/81474711/122691755-f3186b80-d207-11eb-808e-b0ba6bc81ea9.png)

É possível observar que em relação às internações por dengue uma das maiores correlações é em relação à população total que mora em domicílios sem acesso ao serviço de coleta de esgoto. Porém como a variável incremento também está fortemente relacionada a essa variável, foi desconsiderada a população total,  pois ela resulta em pouca influência na regressão múltipla já que está sendo utilizada a variável incremento. Na figura a seguir, é apresentado o resultado dos coeficientes com e sem o uso da população total, e o quanto a variável incremento melhora após a exclusão da população. Outra observação interessante é que o incremento parece influenciar na taxa de internações.
##### Valores de coeficientes das variáveis com população total
| Variáveis                                  | Coeficiente   |
| -------------                              | ------------- |
| Intercept                                  | 200.486       |
| Incremento                                 | 0.360178      |
| Extensão da rede de distribuição de esgoto | -0.170691     |
| Densidade demográfica                      | -0.0136721      |
| Hidrografia                                | -0.0246878      |
| População total que mora em domicílios sem acesso ao serviço de coleta de esgoto                     | 0.000385199      |
##### Valores de coeficientes das variáveis sem população total
| Variáveis                                  | Coeficiente   |
| -------------                              | ------------- |
| Intercept                                  | 373.808       |
| Incremento                                 | 0.747383      |
| Extensão da rede de distribuição de esgoto | -0.159987     |
| Densidade demográfica                      | 0.0340921     |
| Hidrografia                                | 0.0101583     |

Em contrapartida, a qualidade do modelo da regressão piora com a exclusão da população total como pode ser observado na figura abaixo. 
##### Qualidade da Regressão com População Total
| Modelo               | MSE           | RMSE                 | MAE           | R2            |
| -------------        | ------------- | -------------        | ------------- | ------------- |
| Regressão Linear     | 455284.919    | 674.748              | 408.566       | 0.415         |
##### Qualidade de Regressão sem População Total
| Modelo               | MSE           | RMSE                 | MAE           | R2            |
| -------------        | ------------- | -------------        | ------------- | ------------- |
| Regressão Linear     | 500706.015    | 707.606              | 431.891       | 0.357         |

Outra análise utilizada, foi excluir os demais features para analisar o impacto no coeficiente do incremento, já que o objetivo não é criar o modelo para responder a pergunta de pesquisa, mas sim verificar quais features são mais influentes em relação à taxa de internações por dengue. As tabelas a seguir representam esse procedimento.
##### Sem hidrografia com R2 de 0.351
| Variáveis                                  | Coeficiente   | 
| -------------                              | ------------- |  
| Intercept                                  | 420.577       |
| Incremento                                 | 0.870003      |
| Extensão da rede de distribuição de esgoto | -0.171145     |
| Densidade demográfica                      | 0.318228      |
##### Sem densidade com R2 de 0.349
| Variáveis                                  | Coeficiente   | 
| -------------                              | ------------- |  
| Intercept                                  | 371.268       |
| Incremento                                 | 0.865883      |
| Extensão da rede de distribuição de esgoto | -0.096833     |
| Hidrografia                                | 0.0091603     |
##### Sem extensão da rede com R2 de 0.342
| Variáveis                                  | Coeficiente   | 
| -------------                              | ------------- |  
| Intercept                                  | 226.127       |
| Incremento                                 | 0.841248      |
| Hidrografia                                | 0.012051      |
| Densidade demográfica                      | 0.0097417     |

O mesmo Workflow foi feito, porém alterando o banco de dados. Foi analisado que em algumas localidades, desde o início de 2008, a área já estava 100% desmatada resultando no incremento igual à zero. Essa informação resultava em uma falsa interpretação, pois o entendimento era que a área deixou de ser desmatada, quando na verdade já tinha sido toda desmatada. Isso poderia resultar em um viés que mesmo com um número de internações aumentando no local, o incremento continuaria zero. Para isso, foi realizado um filtro das áreas que possuíssem dados de desmatamento no período de 12 anos. O filtro consiste em selecionar municípios em 2008 com área desmatada menor que 60% da área total, e em 2019 com área desmatada menor que 100% da área total. As mesmas análises anteriores foram realizadas com essa nova amostra, e serão representadas abaixo.
##### Correlação das Variáveis
![image](https://user-images.githubusercontent.com/81474711/122691800-10e5d080-d208-11eb-99b2-8dec346eda45.png)

##### Valores de coeficientes das variáveis 
| Variáveis                                  | Coeficiente   |
| -------------                              | ------------- |
| Intercept                                  | 263.088       |
| Incremento                                 | 0.398762      |
| Extensão da rede de distribuição de esgoto | -0.0756388    |
| Densidade demográfica                      | 0.0127488     |
| Hidrografia                                | 0.0153722     |

É possível verificar que em ambas as análises a proporção em relação às variáveis são semelhantes em relação às internações por dengue, mesmo os resultados do coeficiente e qualidade do modelo serem diferentes.
##### Qualidade de Regressão com o filtro das regiões desmatadas com população
| Modelo               | MSE           | RMSE                 | MAE           | R2            |
| -------------        | ------------- | -------------        | ------------- | ------------- |
| Regressão Linear     | 313630.867    | 560.028              | 336.303       | 0.244         |
##### Qualidade de Regressão com o filtro das regiões desmatadas sem população
| Modelo               | MSE           | RMSE                 | MAE           | R2            |
| -------------        | ------------- | -------------        | ------------- | ------------- |
| Regressão Linear     | 287741.920    | 536.416              | 324.262       | 0.306         |

Diante desses resultados, podemos observar que o feature que possui uma maior influência em relação às internações é o incremento. Não foi possível constatar que a densidade demográfica e extensão da rede de distribuição de esgoto possui correlação com as internações. Já a hidrografia por ser um dado constante, pode-se justificar o fato da não correlação. Desta forma, escolhemos um teste de hipótese averiguando as médias de dois grupos, em relação às internações no ano e internações no ano seguinte baseando-se no pressuposto de que o efeito do desmatamento pode ser mais observado no ano seguinte.

# Cronograma
| Atividade                                         | 22/04 | 29/04 | 06/05 | 13/05 | 20/05 | 27/05 | 03/06 | 10/06 | 17/06 | 24/06 |
| ------------------------------------------------- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| Download das bases de dados                       |   *   |       |       |       |       |       |       |       |       |       |
| Análise das bases de dados                        |   *   |   *   |   *   |   *   |   *   |       |       |       |       |       |
| Limpeza e normalização dos dados                  |       |   *   |   *   |   *   |   *   |   *   |   *   |       |       |       |
| Verificação de métodos de data mining             |       |       |       |   *   |   *   |       |       |       |       |       |
| Data mining                                       |       |       |       |       |   *   |   *   |   *   |   *   |   *   |       |
| Avaliação dos resultados                          |       |       |       |       |       |   *   |   *   |   *   |   *   |       |
| Publicação e apresentação dos resultados obtidos  |       |       |       |       |       |       |       |       |       |   *   |
