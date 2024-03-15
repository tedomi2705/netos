# Requirements

- Sử dụng lệnh `sed` để thay đổi các từ `nam` trong file `/tmp/full.txt` thành `nu`

- Tạo file `/tmp/backup` là nội dung file `/etc/passwd` nhưng tất cả các chữ thường đã được chuyển thành chữ hoa.

# Solution

## Commands

### Command 1

```sh
sed 's/nam/nu/g' /tmp/full.txt
```

### Command 2

```sh
cat /etc/passwd | tr '[:lower:]' '[:upper:]' > /tmp/backup
```

## Solution

### Command 1

```sh
❯ sed 's/nam/nu/g' /tmp/full.txt
minh nu 21/12/1997 5 7 12
lan nu 20/02/1998 8 6 14
tuan nu 25/11/2000 9 8 17
hoa nu 28/10/1990 7 7 14
khanh nu 14/07/1991 6 9 15
mai nu 16/05/1992 8 8 16
phong nu 22/03/1990 7 6 13
thao nu 22/05/1992 9 9 18
long nu 08/04/2000 8 5 13
yen nu 30/06/1996 7 8 15
binh nu 14/11/1993 6 7 13
linh nu 28/07/1990 5 9 14
quang nu 16/02/1997 9 6 15
nhi nu 29/01/1999 8 7 15
duc nu 20/02/1995 7 8 15
thu nu 24/11/1992 6 8 14
nu nu 26/04/1995 9 9 18
trang nu 09/04/1995 5 6 11
huy nu 03/12/1990 8 7 15
thuy nu 10/08/1997 7 5 12
```

### Command 2

```sh
❯ cat /etc/passwd | tr '[:lower:]' '[:upper:]' > /tmp/backup
❯ cat backup | head
ROOT:X:0:0:ROOT:/ROOT:/USR/BIN/ZSH
DAEMON:X:1:1:DAEMON:/USR/SBIN:/USR/SBIN/NOLOGIN
BIN:X:2:2:BIN:/BIN:/USR/SBIN/NOLOGIN
SYS:X:3:3:SYS:/DEV:/USR/SBIN/NOLOGIN
SYNC:X:4:65534:SYNC:/BIN:/BIN/SYNC
GAMES:X:5:60:GAMES:/USR/GAMES:/USR/SBIN/NOLOGIN
MAN:X:6:12:MAN:/VAR/CACHE/MAN:/USR/SBIN/NOLOGIN
LP:X:7:7:LP:/VAR/SPOOL/LPD:/USR/SBIN/NOLOGIN
MAIL:X:8:8:MAIL:/VAR/MAIL:/USR/SBIN/NOLOGIN
NEWS:X:9:9:NEWS:/VAR/SPOOL/NEWS:/USR/SBIN/NOLOGIN
```