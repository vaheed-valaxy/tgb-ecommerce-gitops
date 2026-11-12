{{- define "common.serviceAccount" }}

{{- if .Values.serviceAccount.create }}
apiVersion: v1
kind: ServiceAccount
metadata:
  name: {{ .Values.serviceAccount.values.name }}
  # namespace: ecommerce-dev

  {{- with .Values.labels }}
  labels:
  {{- toYaml . | nindent 4 }}
  {{- end }}

  {{- with .Values.serviceAccount.values.annotations }}
  annotations:
  {{- toYaml . | nindent 4 }}
  {{- end }}

{{- end }}

{{- end }}
