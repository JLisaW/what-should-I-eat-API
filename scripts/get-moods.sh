#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/moods"
TOKEN="BAhJIiU0MmNjZDJlMDkyMjk3Nzc5YTI3MmIzZjcxMDAyNjI5NAY6BkVG--3da402f211f3cfb264d565cfb5e2817d02464922"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
