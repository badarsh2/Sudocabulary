wget -O ~/.vocab "https://goo.gl/N4EiTq" --no-check-certificate
wget -O ~/.vocabscript "https://goo.gl/gI7xKQ" --no-check-certificate
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