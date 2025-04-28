# Imagen base oficial de Python
FROM python:3.8-slim

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos de la aplicación al contenedor
COPY . .

# Instalar las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Exponer el puerto que usará Flask
EXPOSE 5000

# Comando para correr la aplicación
CMD ["python", "app.py"]



