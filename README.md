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
wget https://go.dev/dl/go1.20.5.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.20.5.linux-amd64.tar.gz
nano ~/.zshrc
GOPATH=$HOME/go
export GOROOT=/usr/local/go
PATH=$PATH:$GOROOT/bin/:$GOPATH/bin
source ~/.zshrc
```

### Installation
```
git clone https://github.com/Mohameddiv/subdomain-enumeration.git
cd subdomain
sudo chmod +x subdomain.sh install.sh
sudo bash install.sh
sudo cp subdomain.sh /usr/local/bin
```
**Note:**

1.you need to add your censys apikey for piad account

```censys config 

API ID
    4f4e5b3d-5133-4dac-92e5-73168755064a

Secret
    yjHHKn8qYhQ1tnAgQ8UkzUH3dnM8iL4Q 

```
   
### Usage
for one domain:

`subdomain.sh target.com >> domain.txt`

for more than one domain:
`for i in $(cat list.txt);don subdomain.sh $i >> subdomains.txt`
