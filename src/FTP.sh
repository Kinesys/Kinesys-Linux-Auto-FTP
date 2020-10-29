#Kinesys Linux Auto FTP.sh
export Today = "`date '+%y-%m-%d'`"

address = "FTP Ip Address"

id = 'FTP ID'
passwd = 'FTP PW'

ftp -n -v $address << EOF

user $id $passwd
cd /
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
