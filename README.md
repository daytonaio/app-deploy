
# Daytona Application Installation Instructions

## Helm

Rename (or copy) .example files to .yaml files.
Replace all template strings with correct values in all .yaml files.

### Keycloack

```
sh install-keycloak.sh
```

After helm installation is complete, get the keycloak admin login credentials.

```
kubectl -n daytona get configmaps keycloak-env-vars -o yaml | grep KEYCLOAK_ADMIN

kubectl -n daytona get secrets/keycloak -o jsonpath='{.data.admin-password}' | base64 -d
```

Create port forward to keycloak admin

```
kubectl port-forward pods/keycloak-0 8080:8080 -n daytona
```
Open the admin page in the browser: `http://localhost:8080`

Login as an administrator using the provided credentials.

In the admin console, click on the "Master" realm dropdown and click "Create" button.

Name the new relam `default` and click the "Browse" button (it is important to upload the config file and not paste the contnet).

The file is provided in the installation repository, in the keycloak folder.

Make sure that `default` realm is selected.

Click on the `Identity providers` section and configure the providers you need. At least one of the git providers must be configured.

To configure Github for example, click on the `github` from the provider list and set the `Client ID` and `Client Secret` based on the values from the Github OAuth application created in your Github account.

Finally, click on the `Clients` section and select `api` from the list. On the `Credentials` tab, copy the `Client secret` value and paste the value in the `daytona/values.yaml` under the `common/keycloak/api/clientSecret` property.
Do the same for `proxy` client. Paste the value under the `common/keycloak/proxy/clientSecret` property.

### Daytona

In the `daytona/values.yaml` replace all existing template strings with correct values.

The `encryptionSecret` can be artbitrary value (or some generate code).

Set `imagePullSecrets` based on the values provided by your vendor.

Once the `values.yaml` file is set, run the helm install.

```
sh install-daytona.sh
```












