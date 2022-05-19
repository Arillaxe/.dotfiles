#!/bin/sh

DATE=$(date)
IP=$(echo $SSH_CONNECTION | head -n1 | awk '{print $1;}')
BODY="{\"embeds\":[{\"title\":\"Вход на **Avalon**\", \"description\":\"**User:** ${USER}\n**Remote IP:** ${IP}\n**Time:**  ${DATE}\",\"color\":3066993}]}"
WEBHOOK="https://discord.com/api/webhooks/..."

curl -X POST -H "Content-Type: application/json" -d "$BODY" $WEBHOOK
