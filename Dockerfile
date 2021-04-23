FROM yourls:latest
RUN mkdir /user/plugins/yourls-anonymise && wget -O /user/plugins/yourls-anonymise/plugin-php https://raw.githubusercontent.com/wlabarron/yourls-anonymise/main/plugin.php 
