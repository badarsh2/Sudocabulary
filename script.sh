wget -O ~/.vocab "https://goo.gl/N4EiTq" --no-check-certificate
wget -O ~/.vocabscript "https://goo.gl/gI7xKQ" --no-check-certificate
if [[ "$OSTYPE" == "linux-gnu" && $(echo $0) == "bash" ]]; then
	OSBASHRC=bashrc
elif [[ "$OSTYPE" == "darwin"* ]]; then
  OSBASHRC=bash_profile
elif [[ $(echo $0 == "zsh") ]]; then
	OSBASHRC=zshrc
fi
if grep -q $'\nchmod +x ~/.vocab\n~/.vocab' ~/.$OSBASHRC
then
    echo ""
else
   echo $'\nchmod +x ~/.vocab\n~/.vocab' >> ~/.$OSBASHRC
fi
