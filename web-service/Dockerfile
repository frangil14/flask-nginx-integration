# Imagen base de Python
FROM python:3.9-slim

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar los archivos del proyecto al contenedor
COPY . .

# Instalar dependencias
RUN pip install -r requirements.txt

# Exponer el puerto 5000 para la aplicación Flask
EXPOSE 5000

# Comando para ejecutar Gunicorn
CMD ["sh", "./gunicorn_start.sh"]