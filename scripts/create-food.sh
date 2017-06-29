#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/foods"
TOKEN="BAhJIiVkZDI3MjczNjZhYjQ2ODU1MTNhNjc0NDdlN2UwMWFmOAY6BkVG--acd7f6fbd5cd87fb9471cd56a18532050451569b"
FOOD_ITEM="cake"
EMOTION="sad"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "foods": {
      "FOOD_ITEM": "'"${FOOD_ITEM}"'",
      "EMOTION": "'"${EMOTION}"'"
    }
  }'

echo
