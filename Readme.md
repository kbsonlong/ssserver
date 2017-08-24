#1、基于Docker安装shadowsocks，实现最简单的VPN配置，进行安全隔离


#2、构建Dockerfile
    git clone https://github.com/kbsonlong/ssserver.git

    cd ssserver
    docker build -t sserver{:version} .

#3、运行sserver容器
    docker run -d  -p 8443:8443 --name ssserver --restart=always ssserver:{varsion}

#4、配置shadowsocks客户端
![image](/img/shadowsocks.png)