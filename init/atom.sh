#!/bin/bash

echo "Initializing atom with some packages..."

apm install atom-beautify
apm install busy-signal
apm install intentions
apm install linter-ui-default
apm install linter
apm install linter-eslint
apm install linter-php
apm install git-plus
apm install linter-shellcheck

echo "Configuring atom..."

cat <<EOT >> ${HOME}/.atom/config.cson
  core:
    telemetryConsent: "no"
  "markdown-preview":
    useGitHubStyle: true
  "tree-view":
    hideIgnoredNames: true
  welcome:
    showOnStartup: false
EOT

echo "done."
