# Requirements

- Sử dụng lệnh  `adduser test`  để tạo người dùng test, hãy kết hợp hai lệnh `echo` và `passwd` để thay đổi mật khẩu của người dùng này chỉ cần 1 lần nhấn <kbd>Enter</kbd>
- Biết `A` là biến chứa một số nguyên dương. Hãy kết hợp giữa hai lệnh `head` và `tail` để hiển thị dòng thứ A trong file `/var/log/messages` (không cần kiểm tra `A` có lớn hơn số dòng trong file không)
- Hãy hiển thị tất cả các dòng không có từ `nologin` trong `/etc/passwd`

# Solution

## Commands

### Command 1

```sh
sudo adduser test
```

### Command 2

```sh
echo "test:new_passwd" | sudo chpasswd
```

### Command 3

```sh
cat > task_06.sh
```

### Command 4

```sh
./task_06.sh
```

### Command 5

```sh
cat /etc/passwd | grep -v "nologin"
```

## Solution

### Command 1

```sh
❯ sudo adduser test
Adding user `test' ...
Adding new group `test' (1001) ...
Adding new user `test' (1001) with group `test (1001)' ...
Creating home directory `/home/test' ...
Copying files from `/etc/skel' ...
New password: 
Retype new password: 
passwd: password updated successfully
Changing the user information for test
Enter the new value, or press ENTER for the default
	Full Name []: 
	Room Number []: 
	Work Phone []: 
	Home Phone []: 
	Other []: 
Is the information correct? [Y/n] y
Adding new user `test' to supplemental / extra groups `users' ...
Adding user `test' to group `users' ...
```

### Command 2

```sh
❯ echo "test:new_passwd" | sudo chpasswd
❯ su test
Password: 
test@TEDOMI:/tmp$
```

### Command 3

```sh
❯ cat > task_06.sh
echo "Nhap so dong can doc: "; read A
cat /tmp/diem.txt | head -n "$A" | tail -n 1
```

### Command 4

```sh
❯ ./task_06.sh
Nhap so dong can doc: 
7
phong nam 7 6 13
```

### Command 5

```sh
❯ cat /etc/passwd | grep -v "nologin"
root:x:0:0:root:/root:/usr/bin/zsh
sync:x:4:65534:sync:/bin:/bin/sync
tss:x:106:111:TPM software stack,,,:/var/lib/tpm:/bin/false
pollinate:x:111:1::/var/cache/pollinate:/bin/false
tedomi:x:1000:1000:,,,:/home/tedomi:/usr/bin/zsh
lxd:x:999:100::/var/snap/lxd/common/lxd:/bin/false
nginx:x:116:127:nginx user,,,:/nonexistent:/bin/false
activemq:x:117:128::/var/lib/activemq:/bin/bash
```