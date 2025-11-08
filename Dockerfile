FROM n8nio/n8n:1.117.0

# Copiamos tu carpeta local .n8n con tus workflows
COPY Data /home/node/.n8n

ENV N8N_HOST=0.0.0.0
ENV N8N_TRUST_PROXY=true

EXPOSE 5678
