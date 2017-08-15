#!/bin/bash

echo "Initializing atom with some packages..."

apm install atom-beautify
apm install busy-signal
apm install intentions
apm install linter-ui-default
apm install linter
apm install linter-eslint
apm install linter-php
apm install linter-shellcheck
apm install todo-show
apm install project-manager
apm install seti-ui
apm install seti-syntax

# if [ -f "$HOME/.atom/config.cson" ]; then
#   touch "$HOME/.atom/config.cson";
# fi

echo "Configuring atom..."

cat <<EOT >> ${HOME}/.atom/config.cson
"*":
  core:
    telemetryConsent: "no"
    themes: [
      "seti-ui"
      "seti-syntax"
    ]
  editor:
    fontSize: 18
  "markdown-preview":
    useGitHubStyle: true
  "tree-view":
    hideIgnoredNames: true
  welcome:
    showOnStartup: false


EOT

echo "done."
