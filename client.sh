#!/bin/bash

SERVER="http://168.144.64.77:3001"

echo "🚀 SMS Client Started (24x7)"
echo "Type message and press ENTER"

while true
do
  read -p "📩 Message: " msg

  curl -X POST $SERVER/send \
  -H "Content-Type: application/json" \
  -d "{\"message\":\"$msg\"}"

  echo ""
done
