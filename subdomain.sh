#read -p "Enter your domain:" 1
#read $1
subfinder -d $1 -all -silent | grep "$1"| anew Recon/subdomains/$1.txt
findomain --target $1  | grep "$1"|grep -v "Target =="| anew Recon/subdomains/$1.txt
#amass enum -passive -norecursive -noalts -d $1 | grep "$domain" | anew Recon/subdomains/$1.txt
assetfinder -subs-only $1 | grep "$1" | anew Recon/subdomains/$1.txt
curl -s "https://jldc.me/anubis/subdomains/$1?" | grep -Po "((http|https):\/\/)?(([\w.-]*)\.([\w]*)\.([A-z]))\w+" | sort -u| anew Recon/subdomains/$1.txt
curl -s "https://otx.alienvault.com/api/v1/indicators/domain/$1/passive_dns" | grep -Po "((http|https):\/\/)?(([\w.-]*)\.([\w]*)\.([A-z]))\w+"| sort -u  | grep ".$1$" | anew Recon/subdomains/$1.txt
python3 Recon/tools/Sublist3r/sublist3r.py -d $1 | grep "$1" |grep -v "Enumerating subdomains"|anew Recon/subdomains/$1.txt 
#gobuster dns -d $1  -w /usr/share/wordlists/subdomain.txt -q | grep "$1"| anew Recon/subdomains/$1.txt
crt.sh $1 | grep "$1" | anew Recon/subdomains/$1.txt 
python3 Recon/tools/github-search/github-subdomains.py -t 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 -d $1 | grep "$1"| anew Recon/subdomains/$1.txt
cd Recon/tools/ShoLister
echo $1 >>x.txt
python3 sholister_hostname.py x.txt
rm x.txt
cat $1* | grep "$1"| anew Recon/subdomains/$1.txt
cd
cd /Recon/tools/hoOk
python3 hoOk.py -t $1  
cat $1* | grep "$1"| anew Recon/subdomains/$1.txt
cd

total=$(cat Recon/subdomains/$1.txt | wc  -l)
cd
echo "############################ All subdomains for $1 :$total "
echo "############################ All subdomains for $1 here: Recon/subdomains/$1.txt "
