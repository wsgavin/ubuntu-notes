#!/bin/sh

echo
printf "Installing and configuring AWS tools..."

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
