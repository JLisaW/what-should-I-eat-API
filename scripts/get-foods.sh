#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/foods"
TOKEN="BAhJIiUzYmY5Y2IzYmY3ZGY3YzRmMzBkZjg3Zjc4M2FkNTFmMgY6BkVG--9f92533b127d65c676d7a641d666d2a053f4b97b"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
