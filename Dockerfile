FROM quay.io/keycloak/keycloak:24.0.1

ENV KEYCLOAK_ADMIN=cin24027
ENV KEYCLOAK_ADMIN_PASSWORD=Konecta2025**

RUN /opt/keycloak/bin/kc.sh build

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start", "--http-relative-path=/", "--hostname-strict=false", "--hostname-strict-https=false"]