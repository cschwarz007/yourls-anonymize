FROM yourls:latest

RUN mkdir /usr/src/yourls/user/plugins/yourls-anonymise; \
    curl -o /usr/src/yourls/user/plugins/yourls-anonymise/plugin.php -fsSL "https://raw.githubusercontent.com/wlabarron/yourls-anonymise/main/plugin.php"; \
    mkdir /usr/src/yourls/user/plugins/allow-aliases; \
    curl -o /usr/src/yourls/user/plugins/allow-aliases/plugin.php -fsSL "https://raw.githubusercontent.com/adigitalife/yourls-allow-aliases/master/allow-aliases/plugin.php"; \
    mkdir /usr/src/yourls/user/plugins/yourls-api-delete; \
    curl -o /usr/src/yourls/user/plugins/yourls-api-delete/plugin.php -fsSL "https://raw.githubusercontent.com/claytondaley/yourls-api-delete/master/plugin.php"; \
    mkdir /usr/src/yourls/user/plugins/case-insensitive; \
    curl -o /usr/src/yourls/user/plugins/case-insensitive/plugin.php -fsSL "https://raw.githubusercontent.com/adigitalife/yourls-case-insensitive/master/case-insensitive/plugin.php"; \    
    chown -R www-data:www-data /usr/src/yourls/user/plugins
