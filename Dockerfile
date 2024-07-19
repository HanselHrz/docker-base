#Imagen base
FROM python:3

#variables de entorno
ARG MENSAJE
ENV MNS=$MENSAJE

#Ejecutar instrucciones
RUN mkdir /app
RUN mkdir /app2
RUN echo $MENSAJE

#configurar el directorio de trabajo
WORKDIR /app

#Copia de archivos
#ADD: Copia archivos de la máquina local al contenedor, archivos remotos y comprimitidos
COPY . .
ADD . /app2


#El proceso principal que se ejecuta en mi contenedor
CMD ["echo", "Hola mundo"]