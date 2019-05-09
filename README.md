# awvs docker 构建方法

dockerfile已经写好了，如果要改密码的话，修改下面这行就可以了，然后`docker build .`即可成功构建镜像

由于acunetix_trial.sh超过了github上传大小限制，故需要你去官方下载试用版安装脚本,我使用的版本为v_190409112，下载链接在最后面

`RUN sh -c '/bin/echo -e "\nyes\nacentos\nadmin@test.com\nAa123456\nAa123456\n"| ./acunetix_trial.sh'`

> https://www.acunetix.com/vulnerability-scanner/download/