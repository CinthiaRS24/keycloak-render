FROM quay.io/keycloak/keycloak:24.0.1

ENV KEYCLOAK_ADMIN=cin24027
ENV KEYCLOAK_ADMIN_PASSWORD=Konecta2025**

WORKDIR /opt/keycloak

ENTRYPOINT ["kc.sh", "start-dev"]
