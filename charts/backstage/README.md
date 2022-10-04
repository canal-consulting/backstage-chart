# backstage

![Version: 0.2.0](https://img.shields.io/badge/Version-0.2.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square)

A Helm chart for Kubernetes

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | common | 1.x.x |
| https://charts.bitnami.com/bitnami | postgresql | 11.x.x |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| backstage.args | list | `[]` |  |
| backstage.command[0] | string | `"node"` |  |
| backstage.command[1] | string | `"packages/backend"` |  |
| backstage.containerPorts.backend | int | `7007` |  |
| backstage.extraAppConfig | list | `[]` |  |
| backstage.extraEnvVars | list | `[]` |  |
| backstage.extraEnvVarsSecrets | string | `nil` |  |
| backstage.image.debug | bool | `false` |  |
| backstage.image.pullPolicy | string | `"Always"` |  |
| backstage.image.pullSecrets | list | `[]` |  |
| backstage.image.registry | string | `""` |  |
| backstage.image.repository | string | `""` |  |
| backstage.image.tag | string | `""` |  |
| clusterDomain | string | `"cluster.local"` |  |
| commonAnnotations | object | `{}` |  |
| commonLabels | object | `{}` |  |
| diagnosticMode.args[0] | string | `"infinity"` |  |
| diagnosticMode.command[0] | string | `"sleep"` |  |
| diagnosticMode.enabled | bool | `false` |  |
| extraDeploy | list | `[]` |  |
| fullnameOverride | string | `""` |  |
| global.imagePullSecrets | list | `[]` |  |
| global.imageRegistry | string | `""` |  |
| ingress.annotations | string | `"{ \"nginx.ingress.kubernetes.io/rewrite-target\": \"/\", \"nginx.ingress.kubernetes.io/ssl-redirect\": \"false\" }"` |  |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `false` |  |
| ingress.host | string | `""` |  |
| kubeVersion | string | `""` |  |
| nameOverride | string | `""` |  |
| networkPolicy.egressRules.customRules | list | `[]` |  |
| networkPolicy.enabled | bool | `false` |  |
| networkPolicy.externalAccess.from | list | `[]` |  |
| postgresql | object | `{"architecture":"standalone","auth":{"existingSecret":"","password":"","secretKeys":{"adminPasswordKey":"admin-password","replicationPasswordKey":"replication-password","userPasswordKey":"user-password"},"username":"bn_backstage"},"enabled":false}` | PostgreSQL [chart configuration](https://github.com/bitnami/charts/blob/master/bitnami/postgresql/values.yaml) |
| postgresql.architecture | string | `"standalone"` | PostgreSQL architecture (`standalone` or `replication`) |
| postgresql.auth | object | `{"existingSecret":"","password":"","secretKeys":{"adminPasswordKey":"admin-password","replicationPasswordKey":"replication-password","userPasswordKey":"user-password"},"username":"bn_backstage"}` | The authentication details of the Postgres database |
| postgresql.auth.existingSecret | string | `""` | Name of existing secret to use for PostgreSQL credentials |
| postgresql.auth.password | string | `""` | Password for the custom user to create |
| postgresql.auth.secretKeys | object | `{"adminPasswordKey":"admin-password","replicationPasswordKey":"replication-password","userPasswordKey":"user-password"}` | The secret keys Postgres will look for to retrieve the relevant password |
| postgresql.auth.secretKeys.adminPasswordKey | string | `"admin-password"` | The key in which Postgres will look for, for the admin password, in the existing Secret |
| postgresql.auth.secretKeys.replicationPasswordKey | string | `"replication-password"` | The key in which Postgres will look for, for the replication password, in the existing Secret |
| postgresql.auth.secretKeys.userPasswordKey | string | `"user-password"` | The key in which Postgres will look for, for the user password, in the existing Secret |
| postgresql.auth.username | string | `"bn_backstage"` | Name for a custom user to create |
| postgresql.enabled | bool | `false` | Switch to enable or disable the PostgreSQL helm chart |
| service.annotations | object | `{}` |  |
| service.clusterIP | string | `""` |  |
| service.externalTrafficPolicy | string | `"Cluster"` |  |
| service.extraPorts | list | `[]` |  |
| service.loadBalancerIP | string | `""` |  |
| service.loadBalancerSourceRanges | list | `[]` |  |
| service.nodePorts.backend | string | `""` |  |
| service.ports.backend | int | `7007` |  |
| service.sessionAffinity | string | `"None"` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount | object | `{"annotations":{},"automountServiceAccountToken":true,"create":false,"labels":{},"name":"backstage-sa"}` | Service Account Configuration |
| serviceAccount.annotations | object | `{}` | Additional custom annotations for the ServiceAccount. |
| serviceAccount.automountServiceAccountToken | bool | `true` | Auto-mount the service account token in the pod |
| serviceAccount.create | bool | `false` | Enable the creation of a ServiceAccount for Backstage pods |
| serviceAccount.labels | object | `{}` | Additional custom labels to the service ServiceAccount. |
| serviceAccount.name | string | `"backstage-sa"` | Name of the created ServiceAccount If not set and `serviceAccount.create` is true, a name is generated |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
