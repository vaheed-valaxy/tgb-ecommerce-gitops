{{- define "common.serviceAccount" }}

{{- if .Values.serviceAccount.create }}
apiVersion: v1
kind: ServiceAccount
metadata:
  name: {{ .Values.serviceAccount.values.name }}

  {{- with .Values.labels }}
  labels:
  {{- toYaml . | nindent 4 }}
  {{- end }}

  {{- with .Values.serviceAccount }}
  {{- if and .create .values }}
  annotations:
  {{- toYaml .annotations | nindent 4 }}
  {{- end }}
  {{- end }}

{{- end }}

{{- end }}
