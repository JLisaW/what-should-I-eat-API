#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/moods"
TOKEN="BAhJIiU2OGVlM2ZjOWMwNWYxMzUxN2I0ZjRlNzEzZWU2MWQ4MgY6BkVG--4278722e5005f41dcf6f2dc2670a3e1dbe0af559"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
