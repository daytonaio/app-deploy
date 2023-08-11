{{/*
Expand the name of the chart.
*/}}
{{- define "codeanywhere.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end -}}

{{- define "codeanywhere.postgres.name" -}}
{{- printf "%s-%s" .Release.Name "postgresql" | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "codeanywhere.rabbitmq.name" -}}
{{- printf "%s-%s" .Release.Name "rabbitmq" | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "codeanywhere.redis.name" -}}
{{- printf "%s-%s" .Release.Name "redis-master" | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "codeanywhere.workspaceNamespace" -}}
{{- .Values.common.workspaceNamespace | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Return api fullname
*/}}
{{- define "codelofts.api.fullname" -}}
{{- printf "%s-%s" (include "common.names.fullname" .) "api" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Return email fullname
*/}}
{{- define "codelofts.email.fullname" -}}
{{- printf "%s-%s" (include "common.names.fullname" .) "email" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "codeanywhere.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "codeanywhere.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "codeanywhere.labels" -}}
helm.sh/chart: {{ include "codeanywhere.chart" . }}
{{ include "codeanywhere.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "codeanywhere.selectorLabels" -}}
app.kubernetes.io/name: {{ include "codeanywhere.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "codeanywhere.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "codeanywhere.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Create secret to access docker registry
*/}}
{{- define "imagePullSecret" }}
{{- printf "{\"auths\": {\"%s\": {\"auth\": \"%s\"}}}" .Values.image.repository (printf "%s:%s" .Values.image.imagePullSecret.username .Values.image.imagePullSecret.password | b64enc) | b64enc }}
{{- end }}