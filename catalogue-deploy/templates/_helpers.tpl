{{/* 
App Name - Uses release name 
*/}}
{{- define "catalogue.name" -}}
{{- .Release.Name }}
{{- end}}

{{/* 
Common labels — used in all resources 
*/}}
{{- define "catalogue.labels" -}}
project: roboshop
component: {{ .Release.Name }}
tier: backend
app.kubernetes.io/name: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Values.deployment.imageVersion}}
{{- end}}

{{/*
Selector labels — used in deployment + service
*/}}
{{- define "catalogue.selectorLabels" -}}
project: roboshop
component: {{ .Release.Name }}
tier: backend
{{- end}}
