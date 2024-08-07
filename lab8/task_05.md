# Requirements

- Sử dụng `useradd –D` để thay đổi các thiết lập mặc định
của hệ thống và do đó tất cả người dùng mới sẽ được gán
trong `/bin/sh` thay vì `/bin/bash` (chú ý: điều này sẽ làm
thay đổi file trong `/etc/defaults/`)

- Soạn thảo `/etc/login.defs` và thay đổi tham số mặc định
`PASS_MAX_DAYS` và do đó người dùng mới sẽ phải thay
đổi mật khẩu của mình theo định kỳ 5 ngày

<a name="solutions"/>

# Solution

<a name="commands"/>

## Commands

<a name="command-1"/>

### Command 1 [↑](#bookmarks) [↓](#result-1)

Check previous default shell for all users 

```sh
sudo grep SHELL= /etc/default/useradd
```

Change default shell to **/bin/bash** for all users

```sh
sudo useradd -D -s /bin/sh
```

Check current default shell for all users 

```sh
sudo grep SHELL= /etc/default/useradd
```

<a name="command-2"/>

### Command 2 [↑](#bookmarks) [↓](#result-2)

Check previous default **PASS_MAX_DAYS** for all user

```sh
sudo grep PASS_MAX_DAYS /etc/login.defs
```

Edit **PASS_MAX_DAYS** in **/etc/login.defs**

```sh
sudo vi /etc/login.defs
```

File content

```sh
PASS_MAX_DAYS    5
```

Check current default **PASS_MAX_DAYS** for all user

```sh
sudo grep PASS_MAX_DAYS /etc/login.defs
```

<a name="results"/>

## Results

<a name="result-1"/>

### Result of Command 1 [↑](#command-1)

![alt text](image-17.png)

<a name="result-2"/>

### Result of Command 2 [↑](#command-2)

![alt text](image-18.png)