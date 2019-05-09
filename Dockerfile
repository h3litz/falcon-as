FROM ubuntu:latest
RUN mkdir /data
WORKDIR /data
RUN apt-get update && apt-get upgrade -y && apt-get install -y sudo apt-utils  net-tools&& rm -rf /var/lib/apt/lists/*
RUN apt-get update && sudo apt-get install libxdamage1 libgtk-3-0 libasound2 libnss3 libxss1 libx11-xcb1 -y
COPY ./acunetix_trial.sh .
RUN chmod u+x acunetix_trial.sh
RUN sh -c '/bin/echo -e "\nyes\nacentos\nadmin@test.com\nAa123456\nAa123456\n"| ./acunetix_trial.sh'
COPY ./patch_awvs /home/acunetix/.acunetix_trial/v_190409112/scanner
USER acunetix
CMD /home/acunetix/.acunetix_trial/start.sh
#/home/acunetix/.acunetix_trial/v_190409112/scanner/patch_awvs
