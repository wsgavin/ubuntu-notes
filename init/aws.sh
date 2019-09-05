#!/bin/sh

echo
printf "Installing and configuring AWS tools..."

# Adding now to remove message later after install
export PATH="\$HOME/.local/bin:\$PATH"

pip -q install awscli --upgrade --user

if ! grep -q "\$HOME/.local/bin" $HOME/.profile
then

cat <<EOT >> ${HOME}/.profile

if [ -d "\$HOME/.local/bin" ] ; then
    PATH="\$HOME/.local/bin:\$PATH"
fi

EOT
fi

echo done.
