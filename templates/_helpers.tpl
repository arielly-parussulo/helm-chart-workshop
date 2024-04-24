
{{/*
Define image name
*/}}
{{- define "deployment.image.name" -}}
{{- printf "%s:%s" .Values.deployment.image.name .Values.deployment.image.tag }}
{{- end -}}

{{/*
Define replicas
*/}}
{{- define "deployment.replicas" -}}
{{- default 1 .Values.deployment.replicas }}
{{- end -}}

{{/*
Define restart policy
*/}}
{{- define "deployment.restartPolicy" -}}
{{- default "Always" .Values.deployment.restartPolicy }}
{{- end -}}

{{/*
Define image pull policy
*/}}
{{- define "deployment.image.pullPolicy" -}}
{{- default "Always" .Values.deployment.pullPolicy }}
{{- end -}}