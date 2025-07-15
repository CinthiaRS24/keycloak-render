FROM quay.io/keycloak/keycloak:24.0.1

ENV KEYCLOAK_ADMIN=cin24027
ENV KEYCLOAK_ADMIN_PASSWORD=Konecta2025**

# Construye el server con configuración predeterminada
RUN /opt/keycloak/bin/kc.sh build

# Expone el puerto por donde correrá en Render
EXPOSE 8080

# Comando de arranque usando el hostname de Render (¡ajústalo!)
CMD [ "start-dev", "--hostname", "keycloak-cinthia.onrender.com", "--hostname-strict=false" ]
