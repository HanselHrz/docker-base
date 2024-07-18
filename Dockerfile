#Imagen base
FROM python:3

#Ejecutar instrucciones
RUN mkdir /app
RUN mkdir /app2

#Copia de archivos
#ADD: Copia archivos de la máquina local al contenedor, archivos remotos y comprimitidos
COPY prueba.txt /app/prueba.txt
ADD prueba.txt /app2/prueba.txt


#El proceso principal que se ejecuta en mi contenedor
CMD ["echo", "Hola mundo"]