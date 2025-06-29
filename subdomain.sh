Dir="$HOME/Recon/subdomains"
if [[ "$2" == "-save" ]]; then
    #read -p "Enter your domain:" 1
#read $1
subfinder -d $1 -all -silent | grep "$1"| anew |sort >>$Dir/$1.txt
findomain -t $1  -c /home/mohamed/.config/findomain/findomain-config.yml| grep "$1"|grep -v "Target =="| anew |sort >> $Dir/$1.txt
#amass enum -passive -norecursive -noalts -d $1 | grep "$domain" | anew |sort >> $Dir/$1.txt
rsescan -d $1 | grep "$1"| anew |sort >> $Dir/$1.txt
curl -s https://api.subdomain.center/?domain=$1|jq .|cut -d '"' -f 2 | grep "$1"| anew |sort >> $Dir/$1.txt
assetfinder -subs-only $1 | grep "$1" | anew |sort >> $Dir/$1.txt
curl https://shrewdeye.app/domains/$1.txt | grep "$1" | anew |sort >> $Dir/$1.txt
echo $1 >>target
subMonit88r -l target
cat subMonit88rResults.txt |  grep "$1"|anew |sort >> $Dir/$1.txt
rm -rf target subMonit88rResults.txt
curl -s "https://jldc.me/anubis/subdomains/$1?" | grep -Po "((http|https):\/\/)?(([\w.-]*)\.([\w]*)\.([A-z]))\w+" | sort -u| anew |sort >> $Dir/$1.txt
wget https://www.dnsgrep.cn/subdomain/$1 --header "Host: www.dnsgrep.cn"  --referer=https://www.dnsgrep.cn/  --header "Cookie: cf_clearance=6OCDoX9gY46cS_hBkQewhRT9.N548GiR5uuXEAZ3fH0-1690492547-0-250.0.0; cf_chl_2=195f392158c0c53" --user-agent "Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101 Firefox/102.0" -O dnsgrep.txt
cat dnsgrep.txt|grep -Po "((http|https):\/\/)?(([\w.-]*)\.([\w]*)\.([A-z]))\w+" | sort -u| anew |sort >> $Dir/$1.txt
rm dnsgrep.txt

echo "$1"|haktrails subdomains | anew |sort >> $Dir/$1.txt
curl -s "https://api.hackertarget.com/hostsearch/?q=$1" | grep -o "\w.*$1"| anew |sort >> $Dir/$1.txt
curl https://api.securitytrails.com/v1/domain/$1/subdomains --header 'APIKEY: h7kMNSWW0jURChgflpF4z9gZhdcmzRgL'| jq .subdomains 2>/dev/null | awk -v domain=$1 -F\" '{print $2 "." domain}' | sed '$d' | sed '1d' | anew |sort >> $Dir/$1.txt

firebase.sh $1 |grep "\.$1" | anew |sort >> $Dir/$1.txt

curl -s "https://otx.alienvault.com/api/v1/indicators/domain/$1/passive_dns" | jq|grep '"hostname":'|cut -d '"' -f 4 | grep "\.$1"| anew |sort >> $Dir/$1.txt
#python3 /mnt/sda2/Tools/tools/Sublist3r/sublist3r.py -d $1 | grep "$1" |grep -v "Enumerating subdomains"|anew |sort >> $Dir/$1.txt 
#gobuster dns -d $1  -w /usr/share/wordlists/subdomain.txt -q | grep "$1"| anew |sort >> $Dir/$1.txt
crt.sh $1 | grep "$1" | anew |sort >> $Dir/$1.txt 
#python3 /mnt/sda2/Tools/github-search/github-subdomains.py -t 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 -d $1 | grep "$1"| anew |sort >> $Dir/$1.txt
#cd /mnt/sda2/Tools/ShoLister
#echo $1 >>x.txt
#python3 sholister_hostname.py x.txt
#rm x.txt

cat $1* | grep "$1"| anew |sort >> $Dir/$1.txt
rm -rf $1*
cd
cd /mnt/sda2/Tools/hoOk
python3 hoOk.py -t $1  
cat $1* | grep "$1"| anew |sort >> $Dir/$1.txt
rm -rf $1*
cd

cat $Dir/$1.txt |sort -u -o $Dir/$1.txt
total=$(cat $Dir/$1.txt | wc  -l)
cd
echo "############################ All subdomains for $1 :$total "
echo "############################ All subdomains for $1 here: $Dir/$1.txt "

    
else
    #read -p "Enter your domain:" 1
#read $1
subfinder -d $1 -all -silent | grep "$1" 
findomain -t $1  -c /home/mohamed/.config/findomain/findomain-config.yml| grep "$1"|grep -v "Target ==" 
#amass enum -passive -norecursive -noalts -d $1 | grep "$domain"  
rsescan -d $1 | grep "$1"
curl -s https://api.subdomain.center/?domain=$1|jq .|cut -d '"' -f 2 
assetfinder -subs-only $1 | grep "$1"  
curl https://shrewdeye.app/domains/$1.txt | grep "$1"
echo $1 >>target
subMonit88r -l target
cat subMonit88rResults.txt 
rm -rf target subMonit88rResults.txt
curl -s "https://jldc.me/anubis/subdomains/$1?" | grep -Po "((http|https):\/\/)?(([\w.-]*)\.([\w]*)\.([A-z]))\w+" | sort -u 
wget https://www.dnsgrep.cn/subdomain/$1 --header "Host: www.dnsgrep.cn"  --referer=https://www.dnsgrep.cn/  --header "Cookie: cf_clearance=6OCDoX9gY46cS_hBkQewhRT9.N548GiR5uuXEAZ3fH0-1690492547-0-250.0.0; cf_chl_2=195f392158c0c53" --user-agent "Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101 Firefox/102.0" -O dnsgrep.txt
cat dnsgrep.txt|grep -Po "((http|https):\/\/)?(([\w.-]*)\.([\w]*)\.([A-z]))\w+" | sort -u 
rm dnsgrep.txt

echo "$1"|haktrails subdomains  
curl -s "https://api.hackertarget.com/hostsearch/?q=$1" | grep -o "\w.*$1"
curl https://api.securitytrails.com/v1/domain/$1/subdomains --header 'APIKEY: h7kMNSWW0jURChgflpF4z9gZhdcmzRgL'| jq .subdomains 2>/dev/null | awk -v domain=$1 -F\" '{print $2 "." domain}' | sed '$d' | sed '1d'

firebase.sh $1 |grep "\.$1"  

curl -s "https://otx.alienvault.com/api/v1/indicators/domain/$1/passive_dns" | jq|grep '"hostname":'|cut -d '"' -f 4 | grep "\.$1" 
python3 /mnt/sda2/Tools/tools/Sublist3r/sublist3r.py -d $1 | grep "$1" |grep -v "Enumerating subdomains"
#gobuster dns -d $1  -w /usr/share/wordlists/subdomain.txt -q | grep "$1" 
crt.sh $1 | grep "$1"   
python3 /mnt/sda2/Tools/github-search/github-subdomains.py -t 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 -d $1 | grep "$1" 
cd /mnt/sda2/Tools/ShoLister
echo $1 >>x.txt
python3 sholister_hostname.py x.txt
rm x.txt
cat $1* | grep "$1" 
rm -rf $1*
cd
cd /mnt/sda2/Tools/hoOk
python3 hoOk.py -t $1  
cat $1* | grep "$1" 
rm -rf $1*
cd



fi
