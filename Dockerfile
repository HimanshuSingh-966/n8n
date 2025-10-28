# Use official n8n image
FROM n8nio/n8n:latest

# Set working directory
WORKDIR /data

# Copy environment at build time
ENV DB_TYPE=postgresdb
ENV DB_POSTGRESDB_CONNECTION_URL=postgresql://postgres:Himanshu966@db.hbfpsihuhwciywtrkhdz.supabase.co:5432/postgres?sslmode=require
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV PORT=5678
ENV WEBHOOK_URL=https://n8n-drjv.onrender.com

# Start n8n
CMD ["tini", "--", "n8n"]
