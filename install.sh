#install requirements


go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
sudo mv provider-config.yaml $HOME/.config/subfinder/provider-config.yaml 
sudo cp go/bin/subfinder /usr/local/bin/

curl -LO https://github.com/findomain/findomain/releases/latest/download/findomain-linux-i386.zip
unzip findomain-linux-i386.zip
chmod +x findomain
sudo mv findomain /usr/bin/findomain
rm findomain-linux-i386.zip

go install github.com/shdwpwn/rsescan@latest
sudo cp go/bin/rsescan /usr/local/bin/

go install -v github.com/tomnomnom/assetfinder@latest
sudo cp go/bin/assetfinder /usr/local/bin/

chmod +x subMonit88r
sudo cp subMonit88r /usr/local/bin/

go install -v github.com/hakluke/haktrails@latest
sudo cp haktrails /usr/local/bin/

chmod +x  firebase.sh
sudo cp firebase.sh /usr/local/bin/

#git clone https://github.com/aboul3la/Sublist3r.git
#cd Sublist3r/
#sudo pip install -r requirements.txt
#sudo cp sublist3r.py /usr/local/bin/
#cd ..

chmod +x crt.sh
sudo cp crt.sh /usr/local/bin/

#git clone https://github.com/gwen001/github-search
#cd github-search
#sudo pip3 install -r requirements.txt
#sudo cp github-subdomains.py /usr/local/bin/
#cd ..

#pip install shodan

#pip install termcolor
#shodan init epUwsq69bGZwhaFsiHYCnyvO3mWcXatU
#git clone https://github.com/eslam3kl/ShoLister.git
#pip install censys #don't_forget_to_add_your_api

git clone https://github.com/mrxdevil404/hoOk.git