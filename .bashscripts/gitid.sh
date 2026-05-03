#!/bin/bash
# ~/.bashscripts/gitid.sh
# Usage: gitid <repo-url> [name] [email] [username]

gitid() {
  local REPO_URL=$1
  local NAME=${2:-"khan asfi reza"}
  local EMAIL=${3:-"khanasfireza10@gmail.com"}
  local USERNAME=${4:-"khan-asfi-reza"}

  if [ -z "$REPO_URL" ]; then
    echo "Usage: gitid <repo-url> [name] [email] [username]"
    return 1
  fi

  git remote set-url origin "$REPO_URL"
  git config user.name "$NAME"
  git config user.email "$EMAIL"
  git config "credential.${REPO_URL}.username" "$USERNAME"

  echo "✓ $USERNAME <$EMAIL> → $REPO_URL"
}
