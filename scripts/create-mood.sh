#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/moods"
TOKEN="BAhJIiUzOGEzYTlkYTVmOWEwNTYwOGE2NGNmYWEyZWMzOTMzZgY6BkVG--8f0c94bd7a7f3145d0b6ddb316c4a1af92b2cd8f"
TITLE="sad"
FOOD="cookies"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "mood": {
      "title": "'"${TITLE}"'",
      "food": "'"${FOOD}"'"
    }
  }'

echo
