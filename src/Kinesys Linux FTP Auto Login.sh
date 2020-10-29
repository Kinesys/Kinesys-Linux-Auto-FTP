#Kinesys Linux FTP Auto Login.sh
#!/Kinesys/bin/bash
#해당 FTP login source는 패시브모드를 사용하였습니다.
export Day_data = "`date '+%y-%m-%d'`"
export day = `date+%a`
set -x

$HOST =  'FTP주소'
$USER_ID = 'user.id'
$PASSWD = 'user.passwd'
$TARGET = data.bin  #접속 경로에 DATA.BIN이라는 파일을 미리 제작해 놓아야 

pftp -inv $HOST << EOF
user $USER_ID $PASSWD
bin
hash
put $TARGET
bye
EOF
#접속 확인 문구
echo "해당 FTP 서버에 접속을 성공하였습니다."
