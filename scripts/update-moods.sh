#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/moods/1"
TITLE=“Sad”
FOOD=“Cookies”
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "mood": {
      "title": "'"${TITLE}"'",
      "food": "'"${FOOD}"'"
    }
  }'

echo
