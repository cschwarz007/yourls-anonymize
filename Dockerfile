FROM yourls:latest
RUN mkdir /usr/src/yourls/user/plugins/yourls-anonymise && curl -o /usr/src/yourls/user/plugins/yourls-anonymise/plugin.php -fsSL "https://raw.githubusercontent.com/wlabarron/yourls-anonymise/main/plugin.php"
