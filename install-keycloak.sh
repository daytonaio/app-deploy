helm upgrade --install keycloak -n daytona bitnami/keycloak --atomic --timeout 2m0s --version 13.0.4 --debug -f keycloak/values.yaml
