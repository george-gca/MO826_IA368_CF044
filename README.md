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
Doenças emergentes infecciosas (EID - *emerging infectious diseases*) e doenças reemergentes, são doenças novas ou reincidentes que surgem dentro de uma população [[1]](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2626828/) [[2]](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7096727/). Podem ser originadas a partir de fatores como mudanças ambientais (desmatamento, mudanças climáticas e alterações no ecossistema hídrico), comportamentos humanos (migrações, comportamentos sexuais, crescimento populacional e urbanização), adaptação e mudanças nos agentes etiológicos (mutações e outros mecanismos moleculares de variação antigênica), entre outros [[3]](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2626828/) [[4]](https://pubmed.ncbi.nlm.nih.gov/18288193/).
O desmatamento é uma prática que consiste na retirada parcial ou total da cobertura vegetal de uma região. Na região amazônica, têm aumentado sucessivamente nos últimos 5 anos, alcançando as maiores taxas de desmatamento da década em 2020 [[5]](https://www.nature.com/articles/s41559-020-01368-x). De maneira complementar, de acordo com um relatório publicado pela Sociedade Vegetariana Brasileira, cerca de 70% da área desmatada na área da Amazônia é designada para a criação de gado (dados de artigos [[6]](https://www.cifor.org/publications/pdf_files/media/Amazon.pdf) [[7]](https://iopscience.iop.org/article/10.1088/1748-9326/5/2/024002/pdf)) e satélite via [PRODES](http://www.obt.inpe.br/OBT/assuntos/programas/amazonia/prodes). Com este aumento no desmatamento e designação da área para agropecuária, há, consequentemente, uma perda significativa na biodiversidade da Amazônia.
 Como foi mencionado, o surgimento de EIDs está diretamente relacionado com fatores ambientais. Se levarmos em consideração que a Amazônia é um dos maiores repositórios de arbovírus [[8]](https://pesquisa.bvsalud.org/portal/resource/pt/lil-188336) - agentes etiológicos de doenças como dengue, chikungunya e zika -, o aumento do desmatamento e de urbanização destas áreas poderia levar à exposição destes novos vírus aos seres humanos. Além disso, o aumento da domesticação de animais para a agropecuária pode promover a geração de novas mutações virais causadas por mecanismos como *shift* e *drift* antigênicos em Influenza [[9]](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4942991/), se tornando potenciais epidemias, como foi o caso da gripe suína (2009). A análise global do surgimento de EIDs (1940-2004) mostrou que a maioria das EIDs são zoonoses (60,3% das EIDs) [[4]](https://pubmed.ncbi.nlm.nih.gov/18288193/), o que evidencia a relevância de estudo aprofundado da origem destas doenças. 
Portanto, o objetivo principal do nosso trabalho é investigar o impacto do desmatamento da Amazônia no aumento de zoonoses nos últimos anos, correlacionando os surtos de zoonoses com os índices de desmatamento. Adicionalmente, pretendemos caracterizar os tipos de zoonoses mais relevantes que atingiram a região amazônica, a fim de identificar padrões para predição de tendências de novos surtos.

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

# Cronograma
| Atividade                                         | S01 | S02 | S03 | S04 | S05 | S06 | S07 | S08 | S09 | S10 | S11 |
| ------------------------------------------------- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Download das bases de dados                       |  *  |     |     |     |     |     |     |     |     |     |     |
| Análise das bases de dados                        |  *  |  *  |  *  |  *  |  *  |     |     |     |     |     |     |
| Limpeza e normalização dos dados                  |     |  *  |  *  |  *  |  *  |  *  |  *  |     |     |     |     |
| Verificação de métodos de data mining             |     |     |     |  *  |  *  |     |     |     |     |     |     |
| Data mining                                       |     |     |     |     |  *  |  *  |  *  |  *  |  *  |     |     |
| Avaliação dos resultados                          |     |     |     |     |     |  *  |  *  |  *  |  *  |     |     |
| Publicação e apresentação dos resultados obtidos  |     |     |     |     |     |     |     |     |     |  *  |  *  |
