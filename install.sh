#install requirements


go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
sudo mv provider-config.yaml $HOME/.config/subfinder/provider-config.yaml 

go install -v github.com/tomnomnom/assetfinder@latest

go install -v github.com/hakluke/haktrails@latest

sudo cp firebase.sh /usr/local/bin/

git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r/
sudo pip install -r requirements.txt
sudo cp sublist3r.py /usr/local/bin/
cd ..

sudo cp crt.sh /usr/local/bin/

git clone https://github.com/gwen001/github-search
cd github-search
sudo pip3 install -r requirements.txt
sudo cp github-subdomains.py /usr/local/bin/
cd ..

pip install shodan

pip install termcolor
shodan init epUwsq69bGZwhaFsiHYCnyvO3mWcXatU
git clone https://github.com/eslam3kl/ShoLister.git

pip install censys #don't_forget_to_add_your_api
git clone https://github.com/mrxdevil404/hoOk.git

