#!/bin/sh

echo
printf "Installing and configuring AWS tools..."

#TODO add input for configuring.

# Adding now to remove message later after install
export PATH=$HOME/.local/bin:$PATH

pip -q install awscli --upgrade --user

cat <<EOT >> ${HOME}/.bashrc

#### aws_cli ####

export LOCAL_HOME_ROOT="$HOME/.local"
export PATH="\$LOCAL_HOME_ROOT/bin:\$PATH"

#### aws ####

EOT

echo done.
