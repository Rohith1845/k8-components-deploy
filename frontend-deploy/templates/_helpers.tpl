{{/*
App Name - Uses release name
*/}}
{{- define "frontend.name" -}}
{{- .Release.Name }}
{{- end }}

{{/*
Selector labels — used in deployment + service
*/}}
{{- define "frontend.selectorLabels" -}}
project: roboshop
component: {{ .Release.Name }}
tier: frontend
{{- end }}

{{/*
Common labels — used in all resources
*/}}
{{- define "frontend.labels" -}}
{{ include "frontend.selectorLabels" . }}
app.kubernetes.io/name: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Values.deployment.imageVersion | quote }}
{{- end }}
