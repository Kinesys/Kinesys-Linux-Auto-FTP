#Kinesys Linux Auto FTP.sh
export Today = "`date '+%y-%m-%d'`" #시간 출력
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
mkdir $Today
ls
cd $Today
lcd /현재컴퓨터의백업이저장되는경로
mput *
bye
EOF
exit 0
