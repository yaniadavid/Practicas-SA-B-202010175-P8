{{- define "sa-platform.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "sa-platform.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "sa-platform.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "sa-platform.labels" -}}
app.kubernetes.io/name: {{ include "sa-platform.name" . | quote }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service | quote }}
helm.sh/chart: {{ printf "%s-%s" .Chart.Name .Chart.Version | quote }}
{{- end -}}

{{- define "sa-platform.serviceName" -}}
{{- required "service.name is required" .name | quote -}}
{{- end -}}

{{- define "sa-platform.image" -}}
{{- printf "%s:%s" (required "image.repository is required" .image.repository) (default "latest" .image.tag) | quote -}}
{{- end -}}

