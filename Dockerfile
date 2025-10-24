# Usa una imagen base de Java (cambia el '17' si usas otra versión)
FROM eclipse-temurin:17-jre-focal

# Establece el directorio de trabajo dentro del contenedorr
WORKDIR /app

# Copia tu .jar al contenedor (¡ASEGÚRATE DE QUE EL NOMBRE COINCIDA!)
COPY UsochicamochaBacken-0.0.1-SNAPSHOT.jar .

# Expone el puerto 8080 (el que usa Spring Boot por defecto)
EXPOSE 8080

# El comando para correr tu app (¡ASEGÚRATE DE QUE EL NOMBRE COINCIDA!)
ENTRYPOINT ["java", "-jar", "mi-app.jar"]