# Use the official Meilisearch version (default: latest)
ARG MEILISEARCH_VERSION=latest
FROM getmeili/meilisearch:${MEILISEARCH_VERSION}

# Copy custom entrypoint script
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# Set working directory
WORKDIR /meili_data

# Expose the default port
EXPOSE 3331

# Set default environment variables
ENV PORT=3331
ENV MEILI_HTTP_ADDR=0.0.0.0:3331
ENV MEILI_DB_PATH=/meili_data/data.ms
ENV MEILI_ENV=production
ENV MEILI_NO_ANALYTICS=true

# Use custom entrypoint that handles Railway's PORT
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
