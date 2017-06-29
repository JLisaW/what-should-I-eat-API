#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/moods"
TOKEN="BAhJIiU4MmE4NWI2NzczZjNiZDllYWZlNDhlYmZhY2NkYmUyZgY6BkVG--f5995db6c292656f6b2a3a8a8d87b055913d4965"
EMOTION="sad"
FOOD="cookies"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "mood": {
      "emotion": "'"${EMOTION}"'",
      "food": "'"${FOOD}"'"
    }
  }'

echo
