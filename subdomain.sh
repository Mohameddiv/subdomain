#read -p "Enter your domain:" 1
#read $1
subfinder -d $1 -all -silent | grep "$1" 
#findomain -t $1  | grep "$1"|grep -v "Target ==" 
#amass enum -passive -norecursive -noalts -d $1 | grep "$domain"  
assetfinder -subs-only $1 | grep "$1"  
curl -s "https://jldc.me/anubis/subdomains/$1?" | grep -Po "((http|https):\/\/)?(([\w.-]*)\.([\w]*)\.([A-z]))\w+" | sort -u 
wget https://www.dnsgrep.cn/subdomain/$1 --header "Host: www.dnsgrep.cn"  --referer=https://www.dnsgrep.cn/  --header "Cookie: cf_clearance=6OCDoX9gY46cS_hBkQewhRT9.N548GiR5uuXEAZ3fH0-1690492547-0-250.0.0; cf_chl_2=195f392158c0c53" --user-agent "Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101 Firefox/102.0" -O dnsgrep.txt
cat dnsgrep.txt|grep -Po "((http|https):\/\/)?(([\w.-]*)\.([\w]*)\.([A-z]))\w+" | sort -u 
rm dnsgrep.txt

echo "$1"|haktrails subdomains  

curl -s "https://api.binaryedge.io/v2/query/domains/subdomain/$1?page=1" -H 'X-Key:d9933da3-6922-4c22-945e-c4215449faf3'|jq|grep "\.$1"|cut -d '"' -f 2 
curl -s "https://api.binaryedge.io/v2/query/domains/subdomain/$1?page=2" -H 'X-Key:d9933da3-6922-4c22-945e-c4215449faf3'|jq|grep "\.$1"|cut -d '"' -f 2 
curl -s "https://api.binaryedge.io/v2/query/domains/subdomain/$1?page=3" -H 'X-Key:d9933da3-6922-4c22-945e-c4215449faf3'|jq|grep "\.$1"|cut -d '"' -f 2 
curl -s "https://api.binaryedge.io/v2/query/domains/subdomain/$1?page=4" -H 'X-Key:d9933da3-6922-4c22-945e-c4215449faf3'|jq|grep "\.$1"|cut -d '"' -f 2 
curl -s "https://api.binaryedge.io/v2/query/domains/subdomain/$1?page=5" -H 'X-Key:d9933da3-6922-4c22-945e-c4215449faf3'|jq|grep "\.$1"|cut -d '"' -f 2 
curl -s "https://api.binaryedge.io/v2/query/domains/subdomain/$1?page=6" -H 'X-Key:d9933da3-6922-4c22-945e-c4215449faf3'|jq|grep "\.$1"|cut -d '"' -f 2 
curl -s "https://api.binaryedge.io/v2/query/domains/subdomain/$1?page=7" -H 'X-Key:d9933da3-6922-4c22-945e-c4215449faf3'|jq|grep "\.$1"|cut -d '"' -f 2 
curl -s "https://api.binaryedge.io/v2/query/domains/subdomain/$1?page=8" -H 'X-Key:d9933da3-6922-4c22-945e-c4215449faf3'|jq|grep "\.$1"|cut -d '"' -f 2 
curl -s "https://api.binaryedge.io/v2/query/domains/subdomain/$1?page=9" -H 'X-Key:d9933da3-6922-4c22-945e-c4215449faf3'|jq|grep "\.$1"|cut -d '"' -f 2 
curl -s "https://api.binaryedge.io/v2/query/domains/subdomain/$1?page=10" -H 'X-Key:d9933da3-6922-4c22-945e-c4215449faf3'|jq|grep "\.$1"|cut -d '"' -f 2 
curl -s "https://api.binaryedge.io/v2/query/domains/subdomain/$1?page=11" -H 'X-Key:d9933da3-6922-4c22-945e-c4215449faf3'|jq|grep "\.$1"|cut -d '"' -f 2 
curl -s "https://api.binaryedge.io/v2/query/domains/subdomain/$1?page=12" -H 'X-Key:d9933da3-6922-4c22-945e-c4215449faf3'|jq|grep "\.$1"|cut -d '"' -f 2 
curl -s "https://api.binaryedge.io/v2/query/domains/subdomain/$1?page=13" -H 'X-Key:d9933da3-6922-4c22-945e-c4215449faf3'|jq|grep "\.$1"|cut -d '"' -f 2 
curl -s "https://api.binaryedge.io/v2/query/domains/subdomain/$1?page=14" -H 'X-Key:d9933da3-6922-4c22-945e-c4215449faf3'|jq|grep "\.$1"|cut -d '"' -f 2 
curl -s "https://api.binaryedge.io/v2/query/domains/subdomain/$1?page=15" -H 'X-Key:d9933da3-6922-4c22-945e-c4215449faf3'|jq|grep "\.$1"|cut -d '"' -f 2 
curl -s "https://api.binaryedge.io/v2/query/domains/subdomain/$1?page=16" -H 'X-Key:d9933da3-6922-4c22-945e-c4215449faf3'|jq|grep "\.$1"|cut -d '"' -f 2 
curl -s "https://api.binaryedge.io/v2/query/domains/subdomain/$1?page=17" -H 'X-Key:d9933da3-6922-4c22-945e-c4215449faf3'|jq|grep "\.$1"|cut -d '"' -f 2 
curl -s "https://api.binaryedge.io/v2/query/domains/subdomain/$1?page=18" -H 'X-Key:d9933da3-6922-4c22-945e-c4215449faf3'|jq|grep "\.$1"|cut -d '"' -f 2 
curl -s "https://api.binaryedge.io/v2/query/domains/subdomain/$1?page=19" -H 'X-Key:d9933da3-6922-4c22-945e-c4215449faf3'|jq|grep "\.$1"|cut -d '"' -f 2 
curl -s "https://api.binaryedge.io/v2/query/domains/subdomain/$1?page=20" -H 'X-Key:d9933da3-6922-4c22-945e-c4215449faf3'|jq|grep "\.$1"|cut -d '"' -f 2 


firebase.sh $1 |grep "\.$1"  

curl -s "https://otx.alienvault.com/api/v1/indicators/domain/$1/passive_dns" | jq|grep '"hostname":'|cut -d '"' -f 4 | grep "\.$1" 
sublist3r.py -d $1 | grep "$1" |grep -v "Enumerating subdomains"
#gobuster dns -d $1  -w /usr/share/wordlists/subdomain.txt -q | grep "$1" 
crt.sh $1 | grep "$1"   
github-subdomains.py -t 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 -d $1 | grep "$1" 
cd $HOME/subdomain/ShoLister
echo $1 >>x.txt
python3 sholister_hostname.py x.txt
rm x.txt
cat $1* | grep "$1" 
rm -rf $1*
cd
cd HOME/subdomain/hoOk
python3 hoOk.py -t $1  
cat $1* | grep "$1" 
rm -rf $1*
cd
