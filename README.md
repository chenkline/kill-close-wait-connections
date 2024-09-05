# kill-close-wait-connects
强行手动关闭CLOSE-WAIT状态的socket连接(不结束对应的进程)

# 安装依赖的gdb

```
apt update && apt install -y gdb
```

# usage
```
chmod a+x ./kill-close-wait.sh
./kill-close-wait.sh
```
