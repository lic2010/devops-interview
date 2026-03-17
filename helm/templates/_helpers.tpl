{{- define "devops-interview.labels" -}}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end }}

{{- define "devops-interview.env" -}}
- name: REDIS_URI
  value: {{ .Values.env.redisUri | quote }}
- name: DATABASE_URI
  value: {{ .Values.env.databaseUri | quote }}
- name: CELERY_BROKER_URL
  value: {{ .Values.env.celeryBrokerUrl | quote }}
- name: CELERY_RESULT_BACKEND
  value: {{ .Values.env.celeryResultBackend | quote }}
- name: INCREMENT_QUEUE
  value: {{ .Values.env.incrementQueue | quote }}
- name: AGGREGATE_QUEUE
  value: {{ .Values.env.aggregateQueue | quote }}
{{- end }}
