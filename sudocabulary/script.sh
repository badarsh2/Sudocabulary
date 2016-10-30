#!/usr/bin/env bash
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	OSBASHRC=bashrc
elif [[ "$OSTYPE" == "darwin"* ]]; then
  OSBASHRC=bash_profile
fi
if grep -q $'\nchmod +x ~/.vocab\n~/.vocab' ~/.$OSBASHRC
then
    echo ""
else
   echo $'\nchmod +x ~/.vocab\n~/.vocab' >> ~/.$OSBASHRC
fi


OSBASHRC=zshrc
if grep -q $'\nchmod +x ~/.vocab\n~/.vocab' ~/.$OSBASHRC
then
    echo ""
else
   echo $'\nchmod +x ~/.vocab\n~/.vocab' >> ~/.$OSBASHRC
fi
