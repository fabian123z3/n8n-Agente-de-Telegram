FROM n8nio/n8n:1.117.0

# Copiar solo la base de datos con los workflows (no el config ni logs)
COPY Data/database.sqlite /home/node/.n8n/database.sqlite

# Dar permisos de escritura al usuario node
RUN chown node:node /home/node/.n8n/database.sqlite && \
    chmod 644 /home/node/.n8n/database.sqlite

ENV N8N_HOST=0.0.0.0
ENV N8N_TRUST_PROXY=true

EXPOSE 5678
