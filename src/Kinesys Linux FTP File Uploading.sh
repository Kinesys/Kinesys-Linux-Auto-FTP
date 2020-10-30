#Kinesys Linux Auto FTP.sh
export Day_data = "`date '+%y-%m-%d'`" #시간 출력
export day = `date+%a` #요일 출력
address = "FTP Ip Address"

id = 'FTP ID'
passwd = 'FTP PW'
#passive모드로 작동함
ftp -n -v $address << EOF
user $id $passwd
ifconfig
cd /
passive 
prompt
bi
mkdir $Day_data
ls
cd $Day_data
lcd /현재컴퓨터의백업이저장되는경로
mput *
bye
EOF
echo "해당 작업이 모두 완료되었습니다."
exit 0
