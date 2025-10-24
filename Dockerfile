# Usa una imagen base de Java 17 (JRE para ejecución)
FROM eclipse-temurin:17-jre-focal

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia tu .jar y RENOMBRA el archivo copiado a 'app.jar' en el destino
# UsochicamochaBacken-0.0.1-SNAPSHOT.jar <-- Es el nombre ORIGINAL
# app.jar <-- Es el nombre DESTINO dentro del contenedor
COPY UsochicamochaBacken-0.0.1-SNAPSHOT.jar app.jar

# Expone el puerto 8080 (el que usa Spring Boot por defecto)
EXPOSE 8080

# El comando para correr tu app, usando el nombre genérico 'app.jar'
ENTRYPOINT ["java", "-jar", "app.jar"]
