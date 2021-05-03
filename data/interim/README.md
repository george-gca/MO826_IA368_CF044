# Análise Exploratória dos Dados

## Hospitalares
- [Colab](https://colab.research.google.com/drive/1KlttoMcMMMOPWFxvCS6Z_nQh6D6_TL18?usp=sharing)

# Limpando os Dados

## Removendo as primeiras 3 linhas:
```bash
fd -e csv -x sed -i -e '1,3d' {}
rm *.csv-e
```
