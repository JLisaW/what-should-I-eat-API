#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/moods"
TOKEN="BAhJIiU0MmNjZDJlMDkyMjk3Nzc5YTI3MmIzZjcxMDAyNjI5NAY6BkVG--3da402f211f3cfb264d565cfb5e2817d02464922"
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
