# Meilisearch on Railway

This is a template for deploying [Meilisearch](https://www.meilisearch.com/) on Railway.

## Deployment

1. Use the "Deploy on Railway" button below.
2. Configure the `MEILI_MASTER_KEY` environment variable.
3. Railway will automatically deploy your Meilisearch instance

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/deploy/meilisearch-1?referralCode=C1ptQA&utm_source=github&utm_medium=readme&utm_campaign=meilisearch_template)

## Environment Variables

| Variable | Description | Default |
| --- | --- | --- |
| `MEILI_MASTER_KEY` | **Required.** Master key to access the instance. [More info](https://docs.meilisearch.com/learn/configuration/instance_options.html#master-key) | *None* |
| `PORT` | The Railway port to expose. | `3331` |
| `MEILI_HTTP_ADDR` | Address and port binding. | `0.0.0.0:3331` |
| `MEILI_ENV` | Environment (development/production). | `production` |
| `MEILI_DB_PATH` | Path to on-disk database. | `/meili_data/data.ms` |
| `MEILI_NO_ANALYTICS` | Activate/Deactivate Telemetry. | `true` |

## Volumes

Meilisearch uses persistent storage (`/meili_data`) to save indexes and data.
