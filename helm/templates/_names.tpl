{{/*
the name of secret
*/}}
{{- define "base-develop-environtment.secret.name" -}}
{{ include "base-develop-environtment.fullname" . }}-secret
{{- end }}

{{/*
the name of configmap
*/}}
{{- define "base-develop-environtment.configmap.name" -}}
{{ include "base-develop-environtment.fullname" . }}-config
{{- end }}

{{/*
the name of configmap
*/}}
{{- define "cluster.kube.config.secret.name" -}}
{{ $.Values.cluster.kube.config }}
{{- end }}