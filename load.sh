load=$(top -bn1 | awk '/load/{print $13}')
userProcess=$(ps -fu $USER)
freeRoot=$(df -h / | awk '/\//{print $4}')
freeRAM=$(free -m | awk '/Mem/{print $4}')
logDate=$(date)

echo -e "\n $logDate" >> ~/load_logs.txt
echo "Load average, per 15 min: $load" >>  ~/load_logs.txt
echo "Available root space: $freeRoot" >>  ~/load_logs.txt
echo "Available RAM space: $freeRAM" >>  ~/load_logs.txt
echo -e "User Process:\n$userProcess" >>  ~/load_logs.txt
