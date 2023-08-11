# codeanywhere

![Version: 1.24.2](https://img.shields.io/badge/Version-1.24.2-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 8.0.0-beta.52](https://img.shields.io/badge/AppVersion-8.0.0--beta.52-informational?style=flat-square)

Codeanywhere Helm Chart

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | postgresql | 12.1.6 |
| https://charts.bitnami.com/bitnami | rabbitmq | 11.2.2 |
| https://charts.bitnami.com/bitnami | redis | 17.3.17 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| cert-manager.ca.certificate.secretName | string | `"codeanywhere-ca-certificate"` |  |
| cert-manager.ca.certificate.selfSigned | bool | `true` |  |
| cert-manager.ca.issuerName | string | `"codeanywhere-ca-issuer"` |  |
| common.domain | string | `""` |  |
| common.postgresql.database | string | `""` |  |
| common.postgresql.host | string | `""` |  |
| common.postgresql.password | string | `""` |  |
| common.postgresql.port | int | `5432` |  |
| common.postgresql.username | string | `""` |  |
| common.rabbitmq.host | string | `""` |  |
| common.rabbitmq.password | string | `""` |  |
| common.rabbitmq.port | int | `5672` |  |
| common.rabbitmq.username | string | `""` |  |
| common.redis.host | string | `""` |  |
| common.redis.port | int | `6379` |  |
| common.workspaceBaseImage | string | `"codeany/full-ide"` |  |
| common.workspaceNamespace | string | `"workspace"` |  |
| components.api.autoscaling.enabled | bool | `false` |  |
| components.api.autoscaling.maxReplicas | int | `100` |  |
| components.api.autoscaling.minReplicas | int | `1` |  |
| components.api.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| components.api.name | string | `"api"` |  |
| components.api.port | int | `3000` |  |
| components.api.replicaCount | int | `1` |  |
| components.api.resources | object | `{}` |  |
| components.auth.autoLogin | bool | `false` |  |
| components.auth.autoscaling.enabled | bool | `false` |  |
| components.auth.autoscaling.maxReplicas | int | `100` |  |
| components.auth.autoscaling.minReplicas | int | `1` |  |
| components.auth.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| components.auth.mock | bool | `false` |  |
| components.auth.name | string | `"auth"` |  |
| components.auth.providers.bitbucket | object | `{}` |  |
| components.auth.providers.github | object | `{}` |  |
| components.auth.providers.gitlab | object | `{}` |  |
| components.auth.providers.google | object | `{}` |  |
| components.auth.replicaCount | int | `1` |  |
| components.auth.resources | object | `{}` |  |
| components.auth.service.port | int | `3000` |  |
| components.auth.sessionSecret | string | `"zmajcek123"` |  |
| components.dashboard.autoscaling.enabled | bool | `false` |  |
| components.dashboard.autoscaling.maxReplicas | int | `100` |  |
| components.dashboard.autoscaling.minReplicas | int | `1` |  |
| components.dashboard.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| components.dashboard.name | string | `"dashboard"` |  |
| components.dashboard.replicaCount | int | `1` |  |
| components.dashboard.resources | object | `{}` |  |
| components.dashboard.service.port | int | `3000` |  |
| components.dashboard.userDisabledPageDescription | string | `"If you think there is a problem with your account, please contact your administrator."` |  |
| components.dashboard.userDisabledPageTitle | string | `"It seems that you do not have access to Codeanywhere."` |  |
| components.dashboard.workspaceTemplatesIndexUrl | string | `"https://raw.githubusercontent.com/Codeanywhere-Templates/index/main/templates.json"` |  |
| components.docs.autoscaling.enabled | bool | `false` |  |
| components.docs.autoscaling.maxReplicas | int | `100` |  |
| components.docs.autoscaling.minReplicas | int | `1` |  |
| components.docs.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| components.docs.name | string | `"docs"` |  |
| components.docs.replicaCount | int | `1` |  |
| components.docs.resources | object | `{}` |  |
| components.docs.service.port | int | `3000` |  |
| components.domainNotificationPublisher.autoscaling.enabled | bool | `false` |  |
| components.domainNotificationPublisher.autoscaling.maxReplicas | int | `100` |  |
| components.domainNotificationPublisher.autoscaling.minReplicas | int | `1` |  |
| components.domainNotificationPublisher.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| components.domainNotificationPublisher.name | string | `"domain-notification-publisher"` |  |
| components.domainNotificationPublisher.replicaCount | int | `1` |  |
| components.domainNotificationPublisher.resources | object | `{}` |  |
| components.grpcServer.autoscaling.enabled | bool | `false` |  |
| components.grpcServer.autoscaling.maxReplicas | int | `100` |  |
| components.grpcServer.autoscaling.minReplicas | int | `1` |  |
| components.grpcServer.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| components.grpcServer.name | string | `"grpc-server"` |  |
| components.grpcServer.port | int | `8500` |  |
| components.grpcServer.replicaCount | int | `1` |  |
| components.grpcServer.resources | object | `{}` |  |
| components.idleWorkspaceWatcher.autoscaling.enabled | bool | `false` |  |
| components.idleWorkspaceWatcher.autoscaling.maxReplicas | int | `100` |  |
| components.idleWorkspaceWatcher.autoscaling.minReplicas | int | `1` |  |
| components.idleWorkspaceWatcher.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| components.idleWorkspaceWatcher.name | string | `"idle-workspace-watcher"` |  |
| components.idleWorkspaceWatcher.replicaCount | int | `1` |  |
| components.idleWorkspaceWatcher.resources | object | `{}` |  |
| components.proxy.dnsResolver | string | `""` |  |
| components.realtimeServer.autoscaling.enabled | bool | `false` |  |
| components.realtimeServer.autoscaling.maxReplicas | int | `100` |  |
| components.realtimeServer.autoscaling.minReplicas | int | `1` |  |
| components.realtimeServer.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| components.realtimeServer.name | string | `"realtime-server"` |  |
| components.realtimeServer.replicaCount | int | `1` |  |
| components.realtimeServer.resources | object | `{}` |  |
| components.workspaceProvisioner.autoscaling.enabled | bool | `false` |  |
| components.workspaceProvisioner.autoscaling.maxReplicas | int | `100` |  |
| components.workspaceProvisioner.autoscaling.minReplicas | int | `1` |  |
| components.workspaceProvisioner.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| components.workspaceProvisioner.name | string | `"workspace-provisioner"` |  |
| components.workspaceProvisioner.replicaCount | int | `1` |  |
| components.workspaceProvisioner.resources | object | `{}` |  |
| components.workspaceProvisioner.serviceAccount.annotations | object | `{}` |  |
| components.workspaceProvisioner.serviceAccount.name | string | `"workspace-provisioner"` |  |
| components.workspaceProvisioner.storage.accessKeyId | string | `""` |  |
| components.workspaceProvisioner.storage.bucket | string | `""` |  |
| components.workspaceProvisioner.storage.irsa | bool | `false` |  |
| components.workspaceProvisioner.storage.provider | string | `""` |  |
| components.workspaceProvisioner.storage.region | string | `""` |  |
| components.workspaceProvisioner.storage.secretAccessKey | string | `""` |  |
| components.workspaceProvisioner.workspaces.defaultContainerImage | string | `"codeany/universal:latest"` |  |
| components.workspaceProvisioner.workspaces.defaultContainerUser | string | `"codeany"` |  |
| components.workspaceProvisioner.workspaces.devContainerRecoveryImage | string | `"ubuntu"` |  |
| components.workspaceProvisioner.workspaces.devContainerRecoveryUser | string | `"root"` |  |
| components.workspaceProvisioner.workspaces.idleWorkspaceTimeout | int | `1800000` |  |
| components.workspaceProvisioner.workspaces.runtime | string | `"kata-clh"` |  |
| components.workspaceSSHGateway.annotations | object | `{}` |  |
| components.workspaceSSHGateway.autoscaling.enabled | bool | `false` |  |
| components.workspaceSSHGateway.name | string | `"workspace-ssh-gateway"` |  |
| components.workspaceSSHGateway.replicaCount | int | `1` |  |
| components.workspaceSSHGateway.resources | object | `{}` |  |
| components.workspaceSSHGateway.service.port | int | `22` |  |
| components.workspaceSSHGateway.service.type | string | `"LoadBalancer"` |  |
| configuration.defaultPlanMaxWorkspacesHours | int | `100` |  |
| configuration.defaultPlanName | string | `"default"` |  |
| configuration.defaultPlanParallelWorkspaces | int | `3` |  |
| configuration.organizationName | string | `"Codeanywhere"` |  |
| image.imagePullSecret.create | bool | `false` |  |
| image.imagePullSecret.name | string | `""` |  |
| image.imagePullSecret.password | string | `""` |  |
| image.imagePullSecret.username | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"registry.gitlab.com/codeanywhere/workspace-service"` |  |
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations."kubernetes.io/ingress.class" | string | `"nginx"` |  |
| ingress.annotations."kubernetes.io/tls-acme" | string | `"true"` |  |
| ingress.annotations."nginx.ingress.kubernetes.io/proxy-body-size" | string | `"30720m"` |  |
| ingress.enabled | bool | `true` |  |
| ingress.tls | list | `[]` |  |
| notificationBus.maxConcurrentConsumers | int | `100` |  |
| podAnnotations | object | `{}` |  |
| postgresql.auth.database | string | `"codeanywhere"` |  |
| postgresql.auth.password | string | `"supersecretpass"` |  |
| postgresql.auth.username | string | `"codeany"` |  |
| postgresql.enabled | bool | `false` |  |
| postgresql.image.tag | string | `"14.6.0-debian-11-r13"` |  |
| proxy.autoscaling.enabled | bool | `true` |  |
| proxy.replicaCount | int | `1` |  |
| rabbitmq.auth.existingErlangSecret | string | `"messagebus-erlang-cookie"` |  |
| rabbitmq.auth.password | string | `"pass"` |  |
| rabbitmq.auth.username | string | `"user"` |  |
| rabbitmq.enabled | bool | `false` |  |
| rabbitmq.persistence.enabled | bool | `true` |  |
| redis.architecture | string | `"standalone"` |  |
| redis.auth.enabled | bool | `false` |  |
| redis.enabled | bool | `false` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
