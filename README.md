# awvs docker 构建方法

直接dockerfile内容以及写好了，如果要改密码的话，修改这行就可以了，然后docker build .即可

`RUN sh -c '/bin/echo -e "\nyes\nacentos\nadmin@test.com\nAa123456\nAa123456\n"| ./acunetix_trial.sh'`# awvs
