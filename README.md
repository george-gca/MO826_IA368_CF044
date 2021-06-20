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
Doenças emergentes infecciosas (EID - *emerging infectious diseases*) e doenças reemergentes são doenças novas ou reincidentes que surgem dentro de uma população [[1]](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2626828/) [[2]](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7096727/). Podem ser originadas a partir de fatores como mudanças ambientais (desmatamento, mudanças climáticas e alterações no ecossistema hídrico), comportamentos humanos (migrações, comportamentos sexuais, crescimento populacional e urbanização), adaptação e mudanças nos agentes etiológicos (mutações e outros mecanismos moleculares de variação antigênica), entre outros [[3]](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2626828/) [[4]](https://pubmed.ncbi.nlm.nih.gov/18288193/).

O desmatamento é uma prática que consiste na retirada parcial ou total da cobertura vegetal de uma região. Na região amazônica, têm aumentado sucessivamente nos últimos 5 anos, alcançando as maiores taxas de desmatamento da década em 2020 [[5]](https://www.nature.com/articles/s41559-020-01368-x). De maneira complementar, de acordo com um relatório publicado pela Sociedade Vegetariana Brasileira, cerca de 70% da área desmatada na área da Amazônia é designada para a criação de gado (dados de artigos [[6]](https://www.cifor.org/publications/pdf_files/media/Amazon.pdf) [[7]](https://iopscience.iop.org/article/10.1088/1748-9326/5/2/024002/pdf)) e satélite via [PRODES](http://www.obt.inpe.br/OBT/assuntos/programas/amazonia/prodes). Com este aumento no desmatamento e designação da área para agropecuária, há, consequentemente, uma perda significativa na biodiversidade da Amazônia.

Como foi mencionado, o surgimento de EIDs está diretamente relacionado com fatores ambientais. Se levarmos em consideração que a Amazônia é um dos maiores repositórios de arbovírus [[8]](https://pesquisa.bvsalud.org/portal/resource/pt/lil-188336) - agentes etiológicos de doenças como dengue, chikungunya e zika -, o aumento do desmatamento e de urbanização destas áreas poderia levar à exposição destes novos vírus aos seres humanos. Além disso, o aumento da domesticação de animais para a agropecuária pode promover a geração de novas mutações virais causadas por mecanismos como *shift* e *drift* antigênicos em Influenza [[9]](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4942991/), se tornando potenciais epidemias, como foi o caso da gripe suína (2009). A análise global do surgimento de EIDs (1940-2004) mostrou que a maioria das EIDs são zoonoses (60,3% das EIDs) [[4]](https://pubmed.ncbi.nlm.nih.gov/18288193/), o que evidencia a relevância de estudo aprofundado da origem destas doenças.

Portanto, o objetivo principal do nosso trabalho é investigar o impacto do desmatamento da Amazônia no aumento de zoonoses nos últimos anos, correlacionando os surtos de zoonoses com os índices de desmatamento. Adicionalmente, pretendemos caracterizar os tipos de zoonoses mais relevantes que atingiram a região amazônica, a fim de identificar padrões para predição de tendências de novos surtos.

[Vídeo de apresentação](https://youtu.be/YkhxoM7QYJ0)

# Perguntas de Pesquisa
- O desmatamento contribui para o surgimento de doenças emergentes/reemergentes?
  - Existe relação entre o aumento da área desmatada para agropecuária e o aumento de casos de doenças transmitidas por animais domésticos?
  - Existe relação entre o aumento da área desmatada e o aumento de casos de doenças transmitidas por insetos?

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

# Ferramentas
Para analisar e interpretar inicialmente os dados, poderemos utilizar a ferramenta [Data Studio](https://datastudio.google.com/) ou a linguagem [Python](https://www.python.org/) com o auxílio da biblioteca [Pandas](https://pandas.pydata.org/). Para limpeza e normalização dos dados, faremos isso programaticamente por meio das mesmas ferramentas. Para implementação dos métodos de data mining será utilizado a linguagem de programação [Python](https://www.python.org/) e bibliotecas como [Pandas](https://pandas.pydata.org/) e [SKLearn](https://scikit-learn.org/). Para a avaliação e visualização dos resultados poderão ser utilizadas soluções tanto programáticas, por meio de bibliotecas Python como [Matplotlib](https://matplotlib.org/), [Seaborn](https://seaborn.pydata.org/), [Altair](https://altair-viz.github.io/) ou [Plotly](https://plotly.com/python/), quanto plataformas mais amigáveis, como o [PowerBI](https://powerbi.microsoft.com/pt-br/) ou o [Tableau](https://www.tableau.com/pt-br).
# Análises Realizadas
## Regressão Linear Múltipla
A partir da ferramenta Orange utilizamos a regressão linear múltipla para observar se algumas variáveis dentro do banco de dados influenciam de algum modo a taxa de internações de dengue ao longo dos anos. Para tal análise, foram escolhidas como variáveis independentes (variáveis de entrada) a população total que mora em domicílios sem acesso ao serviço de coleta de esgoto, incremento de desmatamento entre o ano atual e o anterior, extensão da rede de distribuição de esgoto, população total que mora em domicílios sem acesso ao serviço de coleta de esgoto, densidade demográfica e área de hidrografia. Para a variável dependente (variável de saída) escolhemos o número de internações por dengue nos anos de 2008 até 2019. O fluxograma para a análise está representado a seguir.
(inserir imagem Workflow)
Inicialmente, verificamos as correlações entre os atributos que estão representados na figura a seguir
##### Correlação das Variáveis
(inserir imagem correlação)
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
(imagem correlação)
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
