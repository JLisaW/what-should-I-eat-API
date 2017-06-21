#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/foods/1"
TOKEN="BAhJIiU0MTdhN2MzZmMyMGI1NDA2YjlhYmZlYzM5ZjQ1MzMyNwY6BkVG--51dce0b907bd6ff78db2f879e9574c49e03207d7"
NAME="Cookies"
MOOD="Sad"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "food": {
      "name": "'"${NAME}"'",
      "mood": "'"${MOOD}"'"
    }
  }'

echo
