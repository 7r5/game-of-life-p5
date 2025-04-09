# Usa una imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos necesarios al contenedor
COPY . .

# Expone el puerto en el que corre tu servidor
EXPOSE 8000

# Comando para ejecutar el servidor HTTP de Python
CMD ["python", "-m", "http.server", "80", "--bind", "0.0.0.0"]

# docker build -t p5-python-server .
# docker run -p 80:80 p5-python-server