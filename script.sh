wget -O ~/.vocab "https://goo.gl/N4EiTq"
wget -O ~/.vocabscript "https://goo.gl/gI7xKQ"
if [[ "$OSTYPE" == "linux-gnu" && $(echo $0) == "bash" ]]; then
	OSBASHRC=bashrc
elif [[ $(echo $0 == "zsh") ]]; then
	OSBASHRC=zshrc
elif [[ "$OSTYPE" == "darwin"* ]]; then
  OSBASHRC=bash_profile
fi
echo "" >> ~/.$OSBASHRC
echo 'chmod +x ~/.vocab' >> ~/.$OSBASHRC
echo '~/.vocab' >> ~/.$OSBASHRC
