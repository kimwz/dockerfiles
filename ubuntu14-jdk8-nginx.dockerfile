FROM ivargrimstad/ubuntu-java8

RUN apt-get install -y software-properties-common && \
apt-get update && \
add-apt-repository ppa:nginx/stable && \
apt-get install -y language-pack-ko && \
locale-gen ko_KR.UTF-8 && \
apt-get update && \
apt-get install -y nginx && \
apt-get install -y fontconfig && \
cd /usr/share/fonts && \
wget https://s3.ap-northeast-2.amazonaws.com/server-config.conbus.net/fonts/NanumBarunGothic.ttf && \
wget https://s3.ap-northeast-2.amazonaws.com/server-config.conbus.net/fonts/NanumBarunGothicBold.ttf && \
fc-cache -f && \
apt-get install -y rdate && \
ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime

RUN apt-get install -y git && \
apt-get install -y curl && \
apt-get install -y vim && \
curl dotfiles.kimwz.kr/installzsh.sh | sh
