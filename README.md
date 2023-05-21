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

## comando grep

### opcion awk 
'grep 127' busca string 127, 'awk' formatear la salida.

```sh
cat archivo.txt | grep 127 | awk ' { print "host ::" $2 " | IP :: " $1 } '
```

### opcion wc 
'grep 127' busca string 127, 'wc -l' cuenta cantidad de ocurrencias.

```sh
cat archivo.txt | grep 127 | wc -l
```

## comando varios

### comando lsof
'lsof -i -P' puertos abiertos, 'grep -i listen' puerto escuchandos.

```sh
lsof -i -P | grep -i listen
```

