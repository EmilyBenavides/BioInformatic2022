## exam1_loop.sh

##i. crear el directorio

## con el comando mkdir creamos una nueva carpeta
mkdir multi_copia

#ii. crear copias de archivos terminan en 1 de multi y enviar a multi_copia

## con el comando cp creamos
cp multi/*1 multi_copia

## iii. contar el numero de columnas e indicar si es par o impar
## ingresamos a la carpeta multi_copia 
cd multi_copia
## creamos un bucle que contiene todos los archivos con el comodin *
for file in *
do
## posteriormente creamos un contador de columnas utilizando comandos y pipes
##head -n1 muestra la primera columna del archivo
##grep -o " " hace match con los espacios y cada coincidencia los muestra como linea
##wc -l cuenta todas las lineas presentes
n=$(head -n1 $file | grep -o " " | wc -l)
## utilizamos la condicional if y el operador % que muestra el residuo del numero de columnas y el 2
if [[  $(($n % 2)) == 0  ]]
then
  echo Par: El numero de columnas de $file es $n
else
  echo Impar: El numero de columnas de $file es $n
fi
done
