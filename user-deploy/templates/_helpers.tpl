{{/*
App Name - Uses release name
*/}}
{{- define "user.name" -}}
{{- .Release.Name }}
{{- end }}

{{/*
Selector labels — used in deployment + service
*/}}
{{- define "user.selectorLabels" -}}
project: roboshop
component: {{ .Release.Name }}
tier: backend
{{- end }}

{{/*
Common labels — used in all resources
*/}}
{{- define "user.labels" -}}
{{ include "user.selectorLabels" . }}
app.kubernetes.io/name: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Values.deployment.imageVersion | quote }}
{{- end }}
