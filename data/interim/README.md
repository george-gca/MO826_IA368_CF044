# Limpando os Dados

## Removendo as primeiras 3 linhas:
```bash
fd -e csv -x sed -i -e '1,3d' {}
rm *.csv-e
```
ou
```bash
filelist=(`ls *.csv`)
for file in "${filelist[@]}"; do head -n 3 $file > "$file"_mod; done
```

## Removendo as últimas 16 linhas
```bash
filelist=(`ls *.csv`)
for file in "${filelist[@]}"; do head -n -16 $file > "$file"_mod; done
```
