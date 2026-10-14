{{/*
App Name - Uses release name
*/}}
{{- define "payment.name" -}}
{{- .Release.Name }}
{{- end }}

{{/*
Selector labels — used in deployment + service
*/}}
{{- define "payment.selectorLabels" -}}
project: roboshop
component: {{ .Release.Name }}
tier: backend
{{- end }}

{{/*
Common labels — used in all resources
*/}}
{{- define "payment.labels" -}}
{{ include "payment.selectorLabels" . }}
app.kubernetes.io/name: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Values.deployment.imageVersion | quote }}
{{- end }}
