FROM getmeili/meilisearch:latest

# Expose the default port
EXPOSE 3331

# Set default environment variables
ENV PORT=3331
ENV MEILI_HTTP_ADDR=0.0.0.0:3331
ENV MEILI_DB_PATH=/meili_data/data.ms
ENV MEILI_ENV=production
ENV MEILI_NO_ANALYTICS=true
