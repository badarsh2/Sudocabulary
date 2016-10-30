#!/usr/bin/env bash
if [[ "$OSTYPE" == "linux-gnu" && $(echo $0) == "bash" ]]; then
	OSBASHRC=bashrc
elif [[ "$OSTYPE" == "darwin"* ]]; then
  OSBASHRC=bash_profile
elif [[ $(echo $0 == "zsh") ]]; then
	OSBASHRC=zshrc
fi
echo "" >> ~/.$OSBASHRC
echo 'chmod +x ~/.vocab' >> ~/.$OSBASHRC
echo '~/.vocab' >> ~/.$OSBASHRC
