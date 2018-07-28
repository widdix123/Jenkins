MESSAGE=$1
EMOJI="${2:-gherkin}"
SLACK_CHANNEL="#test"
SLACK_HOOK="https://hooks.slack.com/services/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"

# console logging
echo -e "SLACK MESSAGE: $MESSAGE\nSLACK EMOJI: $EMOJI\nSLACK_CHANNEL: $SLACK_CHANNEL"

# send the notification
curl -v \
-H "Accept: application/json" \
-H "Content-Type:application/json" \
-X POST --data '{"channel": "'"$SLACK_CHANNEL"'", "username": "webhookbot", "text": "'"$MESSAGE"'"}' $SLACK_HOOK