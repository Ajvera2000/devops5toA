#paso 1 : utilizar una imagen base del sitio oficial de python en dockerhub
FROM python:3.12-slim
#paso 2 : establecer el directorio de trabajo dentro del contenedor
WORKDIR /app
#paso 3 : copiar los archivos necesarios al contenedor
COPY requirements.txt  /app
#paso 4 : instalar las dependencias necesarias utilizando pip
RUN pip install -r requirements.txt
#paso 5 : copiar el archivo app.py al contenedor
COPY . /app
#paso 6 : ejecutamos la aplicacion utilizando el comando python
CMD ["python", "app.py"]