#!/bin/sh

JISHIDA_ENDPOINT="http://push.ijingniu.cn/send"
GITHUB_HEAD_REF=$GITHUB_HEAD_REF
GITHUB_REF=$GITHUB_REF
GITHUB_SHA=$GITHUB_SHA
GITHUB_REPOSITORY=$GITHUB_REPOSITORY
GITHUB_ACTOR=$GITHUB_ACTOR
GITHUB_WORKFLOW=$GITHUB_WORKFLOW
GITHUB_BASE_REF=$GITHUB_BASE_REF
GITHUB_EVENT_NAME=$GITHUB_EVENT_NAME
GITHUB_WORKSPACE=$GITHUB_WORKSPACE
GITHUB_ACTION=$GITHUB_ACTION
GITHUB_EVENT_PATH=$GITHUB_EVENT_PATH

head=${INPUT_HEAD}
body=${INPUT_BODY}

if [ -z "$INPUT_KEY" ]; then
  echo "You must specify jishida key."
  exit 0
fi

if [ -z "$head" ]; then
  head="$GITHUB_REPOSITORY action triggered"
fi

if [ -f ${body} ]; then
  body=$(cat $body)
elif [ -z "$body" ]; then
  body=$head
fi

echo $GITHUB_HEAD_REF

/usr/bin/curl -H "Content-Type: application/x-www-form-urlencoded; charset=UTF-8" --data-urlencode "key=${INPUT_KEY}" --data-urlencode "head=${head}" --data-urlencode "body=${body}" $JISHIDA_ENDPOINT
