domain=$1
outputlist=$2
curl https://crt.sh/?q=%25.$domain | grep "<TD>" | cut -d ">" -f 2 | cut -d "<" -f 1 | sort -u |tee $outputlist
