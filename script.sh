wget -O ~/.vocab "http://bit.ly/1WinY8l"
if [[ "$OSTYPE" == "linux-gnu" ]]; then
  OSBASHRC=bashrc
elif [[ "$OSTYPE" == "darwin"* ]]; then
  OSBASHRC=bash_profile
fi
echo "" >> ~/.$OSBASHRC
echo 'chmod +x ~/.vocab' >> ~/.$OSBASHRC
echo '~/.vocab' >> ~/.$OSBASHRC
