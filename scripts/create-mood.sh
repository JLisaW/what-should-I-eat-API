#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/moods"
TOKEN="BAhJIiU3MjU2OTM1NTBiZjExOTA2ZmExNzg2NDBlMTFkZmZmZQY6BkVG--a3eee75246fae11e47b618374bc2b4b5f595367d"
TITLE="sad"
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
