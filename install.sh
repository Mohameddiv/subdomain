#/bin/Bash

#Installation of subdomain.sh tools ....
#it's reqiure go lang to be installed...

go install -v github.com/tomnomnom/anew@latest
sudo cp go/bin/anew /usr/local/bin/

go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
sudo cp go/bin/subfinder /usr/local/bin/

curl -LO https://github.com/findomain/findomain/releases/latest/download/findomain-linux-i386.zip
unzip findomain-linux-i386.zip
chmod +x findomain
sudo cp findomain /usr/local/bin/

go get -u github.com/tomnomnom/assetfinder
sudo cp go/bin/assetfinder /usr/local/bin/

sudo apt-get install python-requests
sudo apt-get install python-dnspython
sudo apt-get install python-argparse
mkdir Recon/;cd Recon/;mkdir tools/;cd tools
git clone https://github.com/aboul3la/Sublist3r.git;cd Sublist3r/;sudo pip install -r requirements.txt

cd ;chmod +x crt.sh;sudo cp crt.sh /usr/local/bin

cd Recon/tools/;git clone https://github.com/gwen001/github-search;cd github-search;pip3 install -r requirements.txt

cd ..
pip install shodan
pip install termcolor
git clone https://github.com/eslam3kl/ShoLister.git

git clone https://github.com/mrxdevil404/hoOk.git;cd ./hoOk;chmod +x hoOk.py
touch whoisxmlapi.txt
echo "at_0oqHhtgztopOOA8Ojtoy1L5LEFPfA">> whoisxmlapi.txt
echo "at_HWzLSInc59JetFtEiRoOSgQxMPg9l">> whoisxmlapi.txt
cd ../../;mkdir subdomains/;cd 


