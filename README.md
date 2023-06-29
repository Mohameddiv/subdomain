# Subdomain Enumeration
My custom script for subdomain enumeration porcess that uses the most well-known and preferred rescources.

when I move to new VPS, I use this script for subdomain enumeration phase.

It uses alot of tools in one time instead of using one tool every time, and collect the result in one file
### Used Tools

[subfinder](https://github.com/projectdiscovery/subfinder)

[findomain](https://github.com/findomain/findomain)

[assetfinder](github.com/tomnomnom/assetfinder)

[Sublist3r](https://github.com/aboul3la/Sublist3r)

[crt.sh](https://crt.sh)

[github-subdomain](https://github.com/gwen001/github-search)

[ShoLister](https://github.com/eslam3kl/ShoLister)

[hoOK](https://github.com/mrxdevil404/hoOk)


### system requirements
linux  dist

installed golang -->(If Not?)

```
 wget go.dev/dl/go1.20.4.linux-amd64.tar.gz
 sudo tar -xvf go1.20.4.linux-amd64.tar.gz
 sudo mv go /usr/local
 nano /etc/profile or .profile
 export GOPATH=$HOME/go
 export PATH=$PATH:/usr/local/go/bin
 export PATH=$PATH:$GOPATH/bin
```

### Installation
```
git clone https://github.com/Mohameddiv/subdomain-enumeration.git
cd subdomain-enumeration
chmod +x subdomain.sh install.sh
./install.sh
sudo cp subdomain.sh /usr/local/bin/
```
**Note:**

you need to add your shodan apikey for piad account

`shodan init <apikey>`

### Usage

`subdomain.sh target.com`
