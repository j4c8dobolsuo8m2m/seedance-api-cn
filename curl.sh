#!/usr/bin/env bash
set -eu
export APIMART_API_KEY="${APIMART_API_KEY:?set APIMART_API_KEY}"
curl --request POST --url https://api.apimart.ai/v1/images/generations \
  --header "Authorization: Bearer $APIMART_API_KEY" --header 'Content-Type: application/json' \
  --data '{"model":"gpt-image-2.5-ext","prompt":"a modern cliffside villa at dusk","size":"16:9","n":1}'
