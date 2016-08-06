wget -O ~/.vocab "http://bit.ly/1WinY8l"
if [[ "$OSTYPE" == "linux-gnu" && $(echo $0) == "bash" ]]; then
	OSBASHRC=bashrc
elif [[ "$OSTYPE" == "linux-gnu" && $(echo $0 == "zsh") ]]; then
	OSBASHRC=zshrc
elif [[ "$OSTYPE" == "darwin"* ]]; then
  OSBASHRC=bash_profile
fi
echo "" >> ~/.$OSBASHRC
echo 'chmod +x ~/.vocab' >> ~/.$OSBASHRC
echo '~/.vocab' >> ~/.$OSBASHRC
