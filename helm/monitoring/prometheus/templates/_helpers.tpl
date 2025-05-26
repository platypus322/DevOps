{{/*
Generate fullname (release + chart)
*/}}
{{- define "prometheus.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Common labels for Prometheus
*/}}
{{- define "prometheus.labels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/component: monitoring
app.kubernetes.io/part-of: {{ .Chart.Name }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end }}

{{/*
Chart metadata for helm.sh/chart label
*/}}
{{- define "prometheus.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version -}}
{{- end }}