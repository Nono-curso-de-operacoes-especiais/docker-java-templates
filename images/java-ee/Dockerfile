# WildFly
FROM quay.io/wildfly/wildfly:latest

LABEL app="java-ee-template"

# TODO: configurar datasources, módulos, etc.

# Diretório padrão de deploy do WildFly
WORKDIR /opt/jboss/wildfly

# TODO: copiar .war da app
# COPY target/my-app.war /opt/jboss/wildfly/standalone/deployments/

EXPOSE 8080
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0"]
