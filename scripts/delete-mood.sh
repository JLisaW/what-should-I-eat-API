#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/moods/1"
TITLE="sad"
FOOD="cookies"

curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "mood": {
      "title": "'"${TITLE}"'",
      "food": "'"${FOOD}"'"
    }
  }'

echo
