FROM yourls:latest
RUN mkdir /usr/src/yourls/user/plugins/yourls-anonymise && wget -O /usr/src/yourls/user/plugins/yourls-anonymise/plugin.php https://raw.githubusercontent.com/wlabarron/yourls-anonymise/main/plugin.php 
