# scripts en general

## comando cat

### opcion cut 
'cut' extrae columnas, '-c 1-10' caracteres de la 1 a la 10.

```sh
cat archivo.txt | cut -c 1-10
```

### opcion cut + sort + uniq
'cut' extrae columnas, '-d " "' delimitadas por espacio, '-f 1,2' las columnas 1 y 2, 'sort' ordena lo extraido, 'uniq' solo deja lo que no se repite, '-c' cuenta la cantidad de repetidos.

```sh
cat archivo.txt | cut -d " " -f 1,2 | sort | uniq -c
```
