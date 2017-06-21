#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/foods"
TOKEN="BAhJIiVjZjIyMjY2MWFiNjliOTNkYTQyM2UzOTJlOWVmOWMxZgY6BkVG--2d445047f0d6a99759ce4c07c71ac7883b3ff3af"
NAME="cake"
MOOD="sad"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "foods": {
      "name": "'"${NAME}"'",
      "mood": "'"${MOOD}"'"
    }
  }'

echo
