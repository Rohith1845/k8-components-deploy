{{/* 
App Name - Uses release name 
*/}}
{{- define "cart.name" -}}
{{- .Release.Name }}
{{- end}}

{{/* 
Common labels — used in all resources 
*/}}
{{- define "cart.labels" -}}
project: roboshop
component: {{ .Release.Name }}
tier: backend
app.kubernetes.io/name: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Values.deployment.imageVersion}}
{{- end}}

{{/*
Selector labels — used in deployment + service
*/}}
{{- define "cart.selectorLabels" -}}
project: roboshop
component: {{ .Release.Name }}
tier: backend
{{- end}}
