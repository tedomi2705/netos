# Requirements

Biết lệnh `ps` sẽ hiển thị các tiến trình trong bộ nhớ, hãy hiển thị một danh sách 10 tiến trình chiếm nhiều CPU nhất theo dạng 2 cột (`PID`, `%CPU`) và sắp xếp theo thứ tự giảm dần của CPU.

Thực hiện như trên nhưng thay tỷ lệ dùng CPU thành tỷ lệ dùng RAM

# Solution

## Commands

### Command 1

```sh
ps aux | sort -k3 -r | head -n 11 | awk '{print $2, $3}'
```

### Command 2

```sh
ps aux | sort -k4 -r | head -n 11 | awk '{print $2, $4}'
```

## Solution

### Command 1

```sh
❯ ps aux | sort -k3 -r | head -n 11 | awk '{print $2, $3}'
PID %CPU
29606 6.2
5020 5.9
8723 4.9
4478 1.3
8713 0.2
8758 0.1
4491 0.1
29581 0.1
5071 0.1
4501 0.1
```

### Command 2

```sh
❯ ps aux | sort -k4 -r | head -n 11 | awk '{print $2, $4}'
PID %MEM
5020 5.6
29606 3.6
8723 3.0
4478 1.3
8758 0.6
5056 0.6
29581 0.5
4508 0.5
8853 0.5
5071 0.5
```
