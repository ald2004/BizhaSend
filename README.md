# 说明
`psi-4ward/psitransfer`汉化版本。

#### 一、成站效果

![mark](http://imgs.bizha.top/imgs/20200514/RPN2ab8ID6xJ.png?imageslim)

类似于`https://send.firefox.com/`、`https://cowtransfer.com/`

#### 二、虚拟主机安装

支持`nodejs`的虚拟主机，如[老薛主机](https://my.laoxuehost.com/aff.php?aff=7296)，新用户请使用推荐码`one`享受 75折。

进入`cPanel`->`Node.js`，填写。

![mark](http://imgs.bizha.top/imgs/20200514/guTAft5DhQ3X.png?imageslim)



在文件管理中上传源码：

![mark](http://imgs.bizha.top/imgs/20200514/AbLHXw0prnm2.png?imageslim)

再次进入`nodesjs`，安装`package.json`。

![mark](http://imgs.bizha.top/imgs/20200514/F7Lidin0zr7f.png?imageslim)



### 三、绑定域名并访问
docker pull node:10
docker run -it -v "$PWD":/usr/src/app node:10 /bin/bash
npm package.json
docker commit ... node:10


#!/bin/bash
touch nohup.out
rm ./nohup.out || true
docker stop $(docker ps -a -q --filter "name=cowtrans") || true
docker rm cowtrans || true
nohup docker run --rm --name cowtrans -p 80:3000 -v /opt/BizhaSend-master:/usr/src/app -v /dev/shm/nginx_upload/:/usr/src/app/data -w /usr/src/app node:10 node app.js &
