{{/*
App Name - Uses release name
*/}}
{{- define "shipping.name" -}}
{{- .Release.Name }}
{{- end }}

{{/*
Selector labels — used in deployment + service
*/}}
{{- define "shipping.selectorLabels" -}}
project: roboshop
component: {{ .Release.Name }}
tier: backend
{{- end }}

{{/*
Common labels — used in all resources
*/}}
{{- define "shipping.labels" -}}
{{ include "shipping.selectorLabels" . }}
app.kubernetes.io/name: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Values.deployment.imageVersion | quote }}
{{- end }}
